#!/bin/bash
set -e

# wait for db to be ready
until python - <<'PY'
import sys, time
import psycopg2
try:
    conn = psycopg2.connect(
        dbname='postgres', user='postgres', password='postgres', host='db', port=5432, connect_timeout=5
    )
    conn.close()
except Exception as e:
    sys.exit(1)
sys.exit(0)
PY
do
  echo "Waiting for Postgres..."
  sleep 2
done

python manage.py migrate --noinput
python manage.py collectstatic --noinput || true

exec gunicorn myproject.wsgi:application --bind 0.0.0.0:8000 --workers 3
