FROM python:3.9-alpine

WORKDIR /flask
COPY . /flask

RUN pip3 install gunicorn
RUN pip3 install -r requirements.txt

CMD gunicorn --bind 0.0.0.0:5000 wsgi:app
