from django.contrib import admin
from .models import BoysShoe, BoysClothing, GirlsShoe, GirlsClothing


class BoyClothAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(BoysClothing, BoyClothAdmin)


class BoyShoeAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(BoysShoe, BoyShoeAdmin)


class GirlClothAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(GirlsClothing, GirlClothAdmin)


class GirlShoeAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(GirlsShoe, GirlShoeAdmin)
