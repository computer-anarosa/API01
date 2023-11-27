# Importa a biblioteca 'json'.
import json

items = [
    {
        "id": 1,
        "name": "Bagulho",
        "description": "Apenas um bagulho",
        "location": "Em uma caixa",
    },
    {
        "id": 2,
        "name": "Tranqueira",
        "description": "Apenas uma tranqueira qualquer",
        "location": "Em um gaveteiro",
    },
    {
        "id": 3,
        "name": "Bagulete",
        "description": "Um bagulete qualquer",
        "location": "Na esquina",
    },
]

# Função que lê e lista todos os itens da coleção.
def get_all():
    # Converte a lusta 'items' para json e armazena em 'var_json'
    return json.dumps(items, indent=2)



def get_one(id): # Função que lê um item específico, identificado pelo índice.

   for item in items:
       if item.get("id") == id:
           return json.dumps(item, indent=2)


# Chama (call) a função get_all().
#print(get_all())

# Chama a função get_one(), passando o índice como parâmetro.
print(get_one(2))
