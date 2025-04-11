
from django.urls import path
from .views import calculeaza_view


urlpatterns = [
    path("calculeaza/", calculeaza_view)
]