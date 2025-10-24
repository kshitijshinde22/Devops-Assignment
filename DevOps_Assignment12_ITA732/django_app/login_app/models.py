from django.db import models

class Login(models.Model):
    username = models.CharField(max_length=64, unique=True)
    password = models.CharField(max_length=128)

    def __str__(self):
        return self.username
