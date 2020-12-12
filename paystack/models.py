from django.db import models


class CustomerInfo(models.Model):
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.EmailField()
    phone_number = models.CharField(max_length=20)
    amount = models.IntegerField()

    def __str__(self):
        return f'{self.first_name} {self.last_name}'
