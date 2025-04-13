import os 
import subprocess
import time

PROJECT_NAME = "testproject"
PROJECT_APP = "testapp"
start_project = f"python -m django startproject {PROJECT_NAME}"
start_application = f"python3 manage.py startapp {PROJECT_APP}"

comand_list = [start_project, start_application]

for command in comand_list:
    subprocess.call(command, shell =True)
    time.sleep(1)

#setcomenzi

#1. adaugare aplicatie
#2. adaugare in settings
#3. creare folder templates
#4. creare fisier urls pentru fiecare aplicatie
#4. creare perechi  view + template
