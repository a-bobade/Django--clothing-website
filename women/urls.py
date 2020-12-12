from django.urls import path
from . import views

urlpatterns = [
    path('bags/', views.bags, name='bags'),
    path('women-jeans/', views.womenjeans, name='women-jeans'),
    path('jewellery/', views.jewellery, name='jewellery'),
    path('women-joggers/', views.womenjoggers, name='women-joggers'),
    path('women-tops/', views.womentops, name='women-tops'),
    path('women-shirts/', views.womenshirts, name='women-shirts'),
    path('women-suits/', views.womensuits, name='women-suits'),
    path('women-sunglasses/', views.womensunglass, name='women-sunglasses'),
    path('women-trousers/', views.womentrousers, name='women-trousers'),
    path('women-watches/', views.womenwatches, name='women-watches'),
    path('women-shoes/', views.womenshoes, name='women-shoes'),
    path('women-sneakers/', views.womensneakers, name='women-sneakers')
]
