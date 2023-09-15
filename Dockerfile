FROM --platform=$BUILDPLATFORM python:3.6-alpine AS builder
WORKDIR /opt
RUN pip install flask
COPY . /opt
ARG ODOO_URL PGADMIN_URL
EXPOSE 8080:8080
ENTRYPOINT ["python3", "app.py"]