from django.shortcuts import render
import pycountry

# Create your views here.

def formatie_2007_view(request):
    
    formatie = [
                ( 'Dida', 'BR'), 
                ('Oddo', 'IT'),
                ("Nesta", 'IT'),
                ( "Maldini", "IT"),
                ("Jankulovski", "CZ"),
                ('Gattuso', "IT"),
                ( "Pirlo", 'IT'),
                ("Ambrosini", 'IT'),
                ("Kaka", 'BR'), 
                ("Seedors", 'NL'), 
                ("Inzaghi", "IT")
                ]
                 
    formatie = [ (j, pycountry.countries.get(alpha_2 =n).flag) for j,n in formatie ]

    pozitionare = [1, 4, 3, 2, 1]

    pozitionare_formatie = []

    counter = 0

    for i in pozitionare:
        pozitionare_formatie.append(formatie[counter: counter + i])
        counter +=i
    

    context = {
        'linii': formatie,
        'flag': pycountry.countries.get(alpha_2='IT').flag
    }
    return render(request, "2007.html", context)

def formatie_1994_view(request):
    return render(request, "fotbal.html")