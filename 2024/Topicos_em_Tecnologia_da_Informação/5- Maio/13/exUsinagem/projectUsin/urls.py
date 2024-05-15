from django.contrib import admin
from django.urls import path
from Setores import views as setViews

urlpatterns = [
    path('admin/', admin.site.urls),
    path('engenharia/', setViews.eng),
    path('expedicao/', setViews.exped),
    path('producao/', setViews.prod),
    path('qualidade/', setViews.qualid),
]
