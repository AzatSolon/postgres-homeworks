import csv


def read_csv(csv_file):
    """
    Читает фаил формата csv, создает список заполняя его содержимым файла.
    """
    with open(csv_file, encoding='UTF-8', ) as file:
        reader = csv.reader(file)
        next(reader)
        list_row = []
        for row in reader:
            list_row.append(row)
    return list_row
