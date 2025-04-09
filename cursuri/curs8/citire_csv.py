import csv

with open("/Users/laurapopescu/Documents/1.Educatia_mea/1. Link Academy/2025/3.martie/12.03.2025/DataBaseAndSQL/cursuri/curs8/profesori_original.csv", 'r') as freader:
    csv_reader = csv.DictReader(freader)
    print(csv_reader)
    for row in csv_reader:
        print(row)

new_human_dict = {
    'idprofesor':'6',
    'nume': 'Gheorghescu',
    'prenume': 'Gica',
    'adresa': '1',
    'data_nasterii': '1964-02-01',
    'grad': 'I'
}

with open('/Users/laurapopescu/Documents/1.Educatia_mea/1. Link Academy/2025/3.martie/12.03.2025/DataBaseAndSQL/cursuri/curs8/profesori.csv', "w") as fwriter:
    fieldnames = ['idprofesor', 'nume','prenume','adresa','data_nasterii','grad']
    csv_writer = csv.DictWriter(fwriter, fieldnames)
    csv_writer.writerow(new_human_dict)
