from django.shortcuts import render
#from django.http import HttpResponse

def home(request):
    print("Jozias Betoneira")
    return render(request, 'home.html')