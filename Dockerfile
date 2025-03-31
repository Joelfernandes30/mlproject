FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app


RUN apt update -y && apt install awscli -y

EXPOSE 5000

RUN pip install -r requirements.txt
CMD ["python3","app.py"]