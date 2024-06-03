# usuarios/urls.py

from django.urls import path
from .views import cadastrar_usuario, listar_usuarios

urlpatterns = [
    path('cadastrar/', cadastrar_usuario, name='cadastrar_usuario'),
    path('', listar_usuarios, name='listar_usuarios'),
]