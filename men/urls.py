from django.urls import path
from . import views

urlpatterns = [
    path('jerseys/', views.jerseys, name='jerseys'),
    path('men-jeans/', views.menjeans, name='men-jeans'),
    path('men-joggers/', views.menjoggers, name='men-joggers'),
    path('men-polos/', views.menpolos, name='men-polos'),
    path('men-shirts/', views.menshirts, name='men-shirts'),
    path('men-shorts/', views.menshorts, name='men-shorts'),
    path('men-suits/', views.mensuits, name='men-suits'),
    path('men-sunglasses/', views.mensunglass, name='men-sunglasses'),
    path('men-trousers/', views.mentrousers, name='men-trousers'),
    path('men-watches/', views.menwatches, name='men-watches'),
    path('men-shoes/', views.menshoes, name='men-shoes'),
    path('men-sneakers/', views.mensneakers, name='men-sneakers')
]
