FROM python:3
RUN pip3 install django==3.2

COPY . .

RUN python manage.py migrate

CMD ["python","manage","runserver",0.0.0.0:8000]

