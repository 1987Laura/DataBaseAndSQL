from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def capitalizare_view(request, text):
    return HttpResponse(text.upper())

def parametri_view(request):
    print(request.GET)
    primit = request.GET.get('text')
    print("Ai primit", primit)
    if primit:
        return HttpResponse(primit.upper())
    else:
        return HttpResponse("Nu am gasit...")