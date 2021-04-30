from django.db import models

# Create your models here.
class Phone(models.Model):
    name=models.CharField(max_length=100)
    brand=models.CharField(max_length=100)
    ram=models.CharField(max_length=10)
    storage=models.CharField(max_length=10)
    price=models.FloatField(max_length=10)
    stock=models.IntegerField(max_length=5)