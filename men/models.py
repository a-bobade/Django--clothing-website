from django.db import models


class MenWatche(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenSunglasse(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenPolo(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenJean(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenShort(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class Jersey(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenShirt(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenTrouser(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenSuit(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenJogger(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenShoe(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)


class MenSneaker(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='media')
    stock = models.IntegerField()
    price = models.CharField(max_length=15)