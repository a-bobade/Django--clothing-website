from django.db import models


class BoysClothing(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class GirlsClothing(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class BoysShoe(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class GirlsShoe(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)