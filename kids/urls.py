from django.urls import path
from . import views

urlpatterns = [
    path('boys-clothing/', views.boysclothing, name='boys-clothing'),
    path('boys-shoes/', views.boyshoes, name='boys-shoes'),
    path('girls-clothing/', views.girlsclothing, name='girls-clothing'),
    path('girls-shoes/', views.girlshoes, name='girls-shoes')
]
