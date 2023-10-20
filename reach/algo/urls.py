from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings
from django.conf.urls.static import static


app_name = 'algo'
urlpatterns = [

    path('', views.landing, name='landing'),
    #-----HOME-----#
    path('getStarted', views.getStarted, name='getStarted'),
    path('selection', views.selection, name='selection'),
    path('read_more', views.read_more, name='read_more'),
    path('filter_data/', views.filter_data, name='filter_data')
]
