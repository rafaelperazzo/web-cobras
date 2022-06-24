FROM python:3.9
USER root
WORKDIR /flask
COPY requirements.txt ./
RUN apt-get update
RUN apt-get install -y g++ build-essential
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
CMD python /flask/app.py
