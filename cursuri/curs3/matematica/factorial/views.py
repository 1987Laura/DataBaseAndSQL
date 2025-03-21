from django.shortcuts import render
from django.http import HttpResponse
from functools import reduce 

# Create your views here.

def calculeaza_factorial(n):
    produs  = 1
    for i in range(1,n+1):
        produs *= i
    return produs

def calculeaza_factorial_v2(n):
    if n == 0 or n == 1:
        return 1
    return n * calculeaza_factorial_v2(n-1)


def factorial_view(request, n):
    try:
        n= int(n) 
    except: 
        return HttpResponse('Nu se poate calcula')
    
    if n<0:
        return HttpResponse('Trebuie sa fie mai mare sau egal cu zero')
    
    produs = 1 if n <2 else reduce(lambda x, y: x* y, range(1,n+1))
    return HttpResponse(f"{n}! = {produs}")

def factorial_template_view(request, n):
    try:
        n= int(n) 
    except: 
        return HttpResponse('Nu se poate calcula')
    
    if n<0:
        return HttpResponse('Trebuie sa fie mai mare sau egal cu zero')
    
    produs = 1 if n <2 else reduce(lambda x, y: x* y, range(1,n+1))

    lista_factorial = []
    for i in range(n-1, -1, -1):
        lista_factorial.append((i, calculeaza_factorial(i)))
        

    context = {
            'n':n,
            'factorial': produs,
            'lista': lista_factorial,
        }
    return render(request, 'factorial.html', context)