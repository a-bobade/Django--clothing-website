from django.db import models


class Bag(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenWatche(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenSunglasse(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class Jewellerie(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenTop(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenJean(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenShirt(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenTrouser(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenSuit(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenJogger(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenShoe(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class WomenSneaker(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)