# Importa a biblioteca 'json'.
import json

items = [
    {
        "id": 1,
        "nome": "bagulho",
        "description": "Apenas um bagulho",
        "location": "Em uma caixa"
    },
    {
        "id": 2,
        "name": "uniformes",
        "description": "Apenas um guardar roupas",
        "location": "Em um gaveteiro"
    },
    {
        "id": 3,
        "name": "Bagulete",
        "description": "Um bagulete qualquer",
        "location": "na esquina"
    }
]

def get_all():
    # Converte o dicionario 'items' para json e armazena em 'var_json'
    var_json = json.dumps(items, ident=2)

def get_one(id):
    print(items[id],["name"])
    print(coisa)
    
# get_all()

def get_one(id):
    var_json = json.dumps(items[id], indent=2)
    print(var_json)
    
    
    print(items[id]["name"])
    
# get_all()

get_one(1)
