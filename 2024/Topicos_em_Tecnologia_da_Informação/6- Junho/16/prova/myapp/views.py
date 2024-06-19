# myapp/views.py
from django.shortcuts import render, redirect
from .models import Inscription

def index(request):
    return render(request, 'index.html')

def signup(request):
    if request.method == 'POST':
        number = request.POST['number']
        local = request.POST['local']
        image = request.FILES.get('image')

        Inscription.objects.create(number=number, local=local, image=image)
        return redirect('view_cad')

    return render(request, 'cadastro.html')

def view_inscriptions(request):
    inscriptions = Inscription.objects.all()
    return render(request, 'view_cad.html', {'inscriptions':inscriptions})