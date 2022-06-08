FROM python
ENV DJANGO_SUPERUSER_PASSWORD=douglas
WORKDIR /drf_teste_documentacao
COPY . .
RUN pip install -r requirements.txt
RUN python manage.py createsuperuser --noinput --username junior --email 2@1.com
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

