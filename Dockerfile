FROM python:3.6-alpine 
WORKDIR /opt
RUN pip install flask
COPY . /opt
ENV ODOO_URL="https://www.odoo.com/fr_FR/app/website"
ENV PGADMIN_URL="https://www.pgadmin.org/"
EXPOSE 8080
CMD ["python" , "app.py"]