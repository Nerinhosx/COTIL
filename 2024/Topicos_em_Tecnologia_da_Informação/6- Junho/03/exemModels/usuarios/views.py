from django.shortcuts import render, redirect
from .models import Usuario
from .forms import UsuarioForm

def cadastrar_usuario(request):
    if request.method == 'POST':
        form = UsuarioForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('listar_usuarios')
    else:
        form = UsuarioForm()
    return render(request, 'usuarios/cadastrar_usuario.html', {'form': form})

def listar_usuarios(request):
    usuarios = Usuario.objects.all()
    return render(request, 'usuarios/listar_usuarios.html', {'usuarios': usuarios})
