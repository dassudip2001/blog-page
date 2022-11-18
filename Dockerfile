# Dockerfile - this is a comment. Delete me if you want.
FROM python:3.7-alpine

ADD . /app

WORKDIR /app

RUN apk --update --upgrade add --no-cache  gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev

RUN pip install django
EXPOSE 8000
COPY . .
CMD [ "python", "manage.py","runserver" ]