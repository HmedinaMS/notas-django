FROM python:3.12.1-alpine3.19
WORKDIR /usr/src/app
COPY ../requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ../ .
ENV DJANGO_SETTINGS_MODULE=django_notes.settings
ENV PYTHONUNBUFFERED=1
RUN python manage.py makemigrations
RUN python manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

