from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Inscription

def index(request):
    return render(request, 'index.html')

def signup(request):
    if request.method == 'POST': # Verifica se o método da requisição é POST
        # Obtém os dados do formulário
        name = request.POST['name']
        email = request.POST['email']
        dob = request.POST['dob']
        image = request.FILES.get('image')
        
        # Cria uma nova inscrição no banco de dados
        Inscription.objects.create(name=name, email=email, dob=dob, image=image)
        
        # Redireciona para a página de visualização das inscrições
        return redirect('view_inscriptions')
    
    # Renderiza o template signup.html para GET requests
    return render(request, 'signup.html')

# View para a página de visualização das inscrições
def view_inscriptions(request):
    inscriptions = Inscription.objects.all() # Obtém todas as inscrições do banco de dados
    # Renderiza o template view_inscriptions.html com a lista de inscrições
    return render(request, 'view_inscriptions.html', {'inscriptions': inscriptions})