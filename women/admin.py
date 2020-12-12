from django.contrib import admin
from .models import Bag, Jewellerie, WomenJean, WomenTop, WomenSuit, WomenShirt, WomenJogger, WomenSunglasse, \
    WomenTrouser, WomenWatche, WomenShoe, WomenSneaker


class BagAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(Bag, BagAdmin)


class JewelleryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(Jewellerie, JewelleryAdmin)


class WomenJeanAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenJean, WomenJeanAdmin)


class WomenTopAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenTop, WomenTopAdmin)


class WomenSuitAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenSuit, WomenSuitAdmin)


class WomenShirtAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenShirt, WomenShirtAdmin)


class WomenJoggerAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenJogger, WomenJoggerAdmin)


class WomenSunglassAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenSunglasse, WomenSunglassAdmin)


class WomenTrouserAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenTrouser, WomenTrouserAdmin)


class WomenWatchAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenWatche, WomenWatchAdmin)


class WomenShoeAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenShoe, WomenShoeAdmin)


class WomenSneakerAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(WomenSneaker, WomenSneakerAdmin)
