from selenium import webdriver
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()
driver.get("http://<MANAGER_PUBLIC_IP>:8000/")

time.sleep(2)
assert "Login" in driver.title or "Login" in driver.page_source
print("Page loaded OK")
driver.quit()
