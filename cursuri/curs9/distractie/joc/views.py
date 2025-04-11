from django.shortcuts import render

# Create your views here.

def rock_paper_view(request):

    if request.method == "POST":
        print(request.POST)
        client = request.POST.get("chosen")

        #logica de business
        server = '..'
        rezultat ="...."

        context = {
            'client': 'Varianta clientului',
            'server': 'Varianta serverului',
            'rezultat': 'Cineva a castigat',
        }
    else:
        context = {}

        
        return render ( request, 'rock_paper.html', context)