from django.contrib import admin
from .models import Jersey, MenJean, MenJogger, MenPolo, MenSuit, MenShirt, MenShort, MenWatche, MenTrouser,\
    MenSunglasse, MenShoe, MenSneaker


class JerseyAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(Jersey, JerseyAdmin)


class MenJeanAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenJean, MenJeanAdmin)


class MenJoggerAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenJogger, MenJoggerAdmin)


class MenPoloAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenPolo, MenPoloAdmin)


class MenSuitAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenSuit, MenSuitAdmin)


class MenShortAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenShort, MenShortAdmin)


class MenShirtAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenShirt, MenShirtAdmin)


class MenWatchAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenWatche, MenWatchAdmin)


class MenTrouserAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenTrouser, MenTrouserAdmin)


class MenSunglassAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenSunglasse, MenSunglassAdmin)


class MenShoeAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenShoe, MenShoeAdmin)


class MenSneakerAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'stock', 'price')

admin.site.register(MenSneaker, MenSneakerAdmin)
