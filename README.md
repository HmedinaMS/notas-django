## Notas Django & Django Rest Framework

![Django Rest-framework](https://i.ytimg.com/vi/WtdefC1WJgE/maxresdefault.jpg)

#### _El objetivo de este proyecto es aprender y practicar Django y Django Rest-framework 🛸🚀_

<hr/>

## Índice

- [Conseptos Generales Django](#general)
- [PEP8](#pep8)

<hr/>

<div id="general"></div>

## Notas:
Creación del proyecto
```bash

cd ruta/entornos/virtuales
python -m venv <environment-name>
source environment-name/Scripts/activate
pip install django
cd ruta/tus/proyectos
django-admin startproject ecommerce_api
# django-admin startproject ecommerce_api .
```

#### _Comandos para Desarrollo:_ 🧑‍💻
- Iniciar servidor de desarrollo
```bash
python manage.py runserver 8080
```
- Crear aplicaciones
```bash
python manage.py startapp <name>
# o también
django-admin startapp <name>
```
- Crear archivos de migración
```bash
python manage.py makemigrations
```
- Ejecutar migraciones (de nuevos archivos de migración)
```bash
python manage.py migrate
```
- Crear super usuario
```bash
python manage.py createsuperuser
```

<hr/>

## ¿Cómo funciona el proyecto? 🚀

_Desarrollo: Iniciar la base de datos:_
```bash
# modifica las varibles de entorno para tu entorno local
cp .env.example .env
docker compose -f docker/docker-compose.dev.yml --env-file .env up -d
```
_Producción: Crear contenedor de la API:_
```bash
# modifica las varibles de entorno con las credenciales adecuadas
cp .env.example .env.prod
docker compose -f docker/docker-compose.prod.yml --env-file .env.prod up -d
```

<hr/>

<div id="pep8"></div>

### PEP 8
Es una guía de estilo para el código Python que proporciona recomendaciones sobre cómo escribir código Python legible y fácil de mantener. Aquí hay un resumen de las mejores prácticas de Python según el PEP 8:

1. Usa **4 espacios** para la indentación en lugar de tabulaciones.
2. Las líneas no deben tener más de **79 caracteres**.
3. Usa **espacios** alrededor de los operadores y después de las comas.
4. Usa **nombres en minúsculas** para las funciones, variables y métodos.
```python
def calculate_sum(a, b):
    return a + b

my_variable = 42
```
5. Usa **nombres en mayúsculas** para las constantes.
```python
MAX_VALUE = 100
PI = 3.14
```
6. Usa **docstrings** para documentar módulos, clases y funciones.
```python
def calculate_sum(a, b):
    """
    Esta función calcula la suma de dos números.

    Args:
        a (int): El primer número.
        b (int): El segundo número.

    Returns:
        int: La suma de los dos números.
    """
    return a + b
```
7. Usa **espacios** para separar las funciones y clases.
```python
class MyClass:
    def __init__(self, name):
        self.name = name

    def say_hello(self):
        print(f"Hello, {self.name}!")
```
8. Usa **imports** en líneas separadas y ordenados alfabéticamente.
```python
import os
import sys
from datetime import datetime
```
9. Evita usar **abreviaturas** en los nombres de las variables.
```python
# Evita esto:
num = 42

# Usa esto en su lugar:
number = 42
```
10. Usa **comentarios** para explicar el código complejo.


## _Recursos_
- (1) Guía de estilo para el código Python – PEP 8 en Español. https://recursospython.com/pep8es.pdf.
- (2) 15 Mejores Prácticas de Python que debes conocer - Coding Dojo. https://bing.com/search?q=PEP8+mejores+pr%c3%a1cticas+python.
- (3) ¿Que es el PEP 8 y porque debería implementarlo?. https://dev.to/viktorvillalobos/que-es-el-pep-8-y-porque-deberia-implementarlo-54bh.
(4) Verificación de Conformidad PEP8 en Línea: PEP8Online. https://codigospython.com/verificacion-de-conformidad-pep8-en-linea-pep8online/.
(5) PEP 8 – La guía de estilo para Python – Programación para ... - UPM. https://blogs.upm.es/estudiaciencia/pep-8-la-guia-de-estilo-para-python/.