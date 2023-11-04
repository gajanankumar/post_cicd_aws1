#select base image
FROM python:3.9 
#create directory
WORKDIR /invoice_apps
#copy requirements.txt in docker image
COPY requirements.txt .
#to install requirements..txt
RUN pip install -r requirements.txt
#copy installed dependencies into current directory
COPY . .
#to expose application port
EXPOSE 8000
#to run application in docker container
CMD ["python","manage.py","runserver","0.0.0.0:8000"]