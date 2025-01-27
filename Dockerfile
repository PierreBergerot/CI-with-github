# Dockerfile to build a flask app

FROM python:3.9-slim

WORKDIR /python-Dockerfile

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3","app.py"]