FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
