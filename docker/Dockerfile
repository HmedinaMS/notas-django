FROM python:3.12.1-alpine3.19
RUN apk add --no-cache mariadb-connector-c-dev gcc musl-dev
RUN adduser -D appuser
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --no-cache-dir --user -r requirements.txt && \
    rm -rf /root/.cache
COPY . .
RUN chown -R appuser /usr/src/app
USER appuser
ENV DJANGO_SETTINGS_MODULE=django_notes.settings
ENV PYTHONUNBUFFERED=1
RUN python manage.py makemigrations && python manage.py migrate
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "django_notes.wsgi:application"]
