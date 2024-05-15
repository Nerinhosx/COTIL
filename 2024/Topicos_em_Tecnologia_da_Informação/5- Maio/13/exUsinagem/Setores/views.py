from django.shortcuts import render

def eng(request):
    return render(request, 'eng.html')

def exped(request):
    return render(request, 'exped.html')

def prod(request):
    return render(request, 'prod.html')

def qualid(request):
    return render(request, 'qualid.html')