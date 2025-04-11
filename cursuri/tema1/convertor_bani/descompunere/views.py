from django.shortcuts import render

def calculeaza_view(request):
    bacnote = [500, 200, 100, 50, 10, 5, 2, 1]
    result = {}  
    error = None
    amount = None

    if request.method == "POST":
        try: 
            amount = int(request.POST.get("amount"))
            if amount <= 0:
                error = "Te rog introdu o sumă mai mare ca zero"
            else:
                remaining = amount  
                for banc in bacnote:
                    count = remaining // banc
                    if count > 0:
                        result[banc] = count
                    remaining = remaining % banc
        except (ValueError, TypeError):
            error = "Introdu te rog o sumă validă (număr întreg)"

    # Mutat aici, se va trimite indiferent dacă e GET sau POST
    context = {
        'result': result,
        'error': error,
        'amount': amount,
    }

    return render(request, 'calculeaza.html', context)
