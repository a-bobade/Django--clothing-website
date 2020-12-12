from django.shortcuts import render
from .models import Jersey, MenJean, MenJogger, MenPolo, MenSuit, MenShirt, MenShort, MenWatche, MenTrouser,\
    MenSunglasse, MenShoe, MenSneaker


def jerseys(request):

    jersey = Jersey.objects.all()

    return render(request, 'jerseys.html', {'jersey': jersey})


def menjeans(request):

    menjean = MenJean.objects.all()

    return render(request, 'men-jeans.html', {'menjean': menjean})


def menjoggers(request):

    menjogger = MenJogger.objects.all()

    return render(request, 'men-joggers.html', {'menjogger': menjogger})


def menpolos(request):

    menpolo = MenPolo.objects.all()

    return render(request, 'men-polos.html', {'menpolo': menpolo})


def menshirts(request):

    menshirt = MenShirt.objects.all()

    return render(request, 'men-shirts.html', {'menshirt': menshirt})


def menshorts(request):

    menshort = MenShort.objects.all()

    return render(request, 'men-shorts.html', {'menshort': menshort})


def mensuits(request):

    mensuit = MenSuit.objects.all()

    return render(request, 'men-suits.html', {'mensuit': mensuit})


def mensunglass(request):

    mensunglasses = MenSunglasse.objects.all()

    return render(request, 'men-sunglass.html', {'mensunglasses': mensunglasses})


def mentrousers(request):

    mentrouser = MenTrouser.objects.all()

    return render(request, 'men-trousers.html', {'mentrouser': mentrouser})


def menwatches(request):

    menwatch = MenWatche.objects.all()

    return render(request, 'men-watches.html', {'menwatch': menwatch})


def menshoes(request):

    menshoe = MenShoe.objects.all()

    return render(request, 'men-shoes.html', {'menshoe': menshoe})


def mensneakers(request):

    mensneaker = MenSneaker.objects.all()

    return render(request, 'men-sneakers.html', {'mensneaker': mensneaker})
