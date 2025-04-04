from django.test import TestCase

# Create your tests here.

import pycountry

italia = pycountry.countries.get(alpha_2='IT')
print(italia.flag)