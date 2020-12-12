from django.shortcuts import render
from .models import Bag, Jewellerie, WomenJean, WomenTop, WomenSuit, WomenShirt, WomenJogger, WomenSunglasse, \
    WomenTrouser, WomenWatche, WomenSneaker, WomenShoe


def bags(request):

    bag = Bag.objects.all()

    return render(request, 'bags.html', {'bag': bag})


def jewellery(request):

    jewelleries = Jewellerie.objects.all()

    return render(request, 'jewellery.html', {'jewelleries': jewelleries})


def womenjeans(request):

    womenjean = WomenJean.objects.all()

    return render(request, 'women-jeans.html', {'womenjean': womenjean})


def womenjoggers(request):

    womenjogger = WomenJogger.objects.all()

    return render(request, 'women-joggers.html', {'womenjogger': womenjogger})


def womentops(request):

    womentop = WomenTop.objects.all()

    return render(request, 'women-tops.html', {'womentop': womentop})


def womenshirts(request):

    womenshirt = WomenShirt.objects.all()

    return render(request, 'women-shirts.html', {'womenshirt': womenshirt})


def womensuits(request):

    womensuit = WomenSuit.objects.all()

    return render(request, 'women-suits.html', {'womensuit': womensuit})


def womensunglass(request):

    womensunglasses = WomenSunglasse.objects.all()

    return render(request, 'women-sunglass.html', {'womensunglasses': womensunglasses})


def womentrousers(request):

    womentrouser = WomenTrouser.objects.all()

    return render(request, 'women-trousers.html', {'womentrouser': womentrouser})


def womenwatches(request):

    womenwatch = WomenWatche.objects.all()

    return render(request, 'women-watches.html', {'womenwatch': womenwatch})


def womenshoes(request):

    womenshoe = WomenShoe.objects.all()

    return render(request, 'women-shoes.html', {'womenshoe': womenshoe})


def womensneakers(request):

    womensneaker = WomenSneaker.objects.all()

    return render(request, 'women-sneakers.html', {'womensneaker': womensneaker})
