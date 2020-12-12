from django.contrib import admin
from .models import Product, Feature


class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'price')

admin.site.register(Product, ProductAdmin)


class FeatureAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'price')

admin.site.register(Feature, FeatureAdmin)