# myapp/views.py
from django.shortcuts import render, redirect
from .models import Inscription

def index(request):
    return render(request, 'index.html')

def signup(request):
    if request.method == 'POST':
        number = request.POST['number']
        local = request.POST['local']
        image = request.FILES.get('image') # Obtém o arquivo de imagem

        Inscription.objects.create(number=number, local=local, image=image) # Salva a inscrição com a imagem
        return redirect('view_inscriptions')

    return render(request, 'signup.html')

def view_inscriptions(request):
    inscriptions = Inscription.objects.all()
    return render(request, 'view_inscriptions.html', {'inscriptions':inscriptions})