from django.shortcuts import render
from .models import BoysShoe, BoysClothing, GirlsShoe, GirlsClothing


def boysclothing(request):

    boysclothes = BoysClothing.objects.all()

    return render(request, 'boys-clothing.html', {'boysclothes': boysclothes})


def boyshoes(request):

    boysfootwear = BoysShoe.objects.all()

    return render(request, 'boys-shoes.html', {'boysfootwear': boysfootwear})


def girlsclothing(request):

    girlsclothes = GirlsClothing.objects.all()

    return render(request, 'girls-clothing.html', {'girlsclothes': girlsclothes})


def girlshoes(request):

    girlsfootwear = GirlsShoe.objects.all()

    return render(request, 'girls-shoes.html', {'girlsfootwear': girlsfootwear})

