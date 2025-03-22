from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.

def tabla_inmultirii_view(request, num):
    # try:
    #     num = int(num) 
    # except: 
    #     return HttpResponse('Nu se poate calcula')
    
    # if num<0:
    #     return HttpResponse('Trebuie sa fie mai mare sau egal cu zero')
     valori =[]
     num = int(num)
     for i in range(num +1):
        valori.append(f'{i} * {num} = {i*num}')

     context = {
            'num':num,
            'valori': valori,   
        }
     return render(request, 'inmultire.html', context)
