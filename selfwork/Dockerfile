FROM ubuntu:14.04
RUN apt-get install software-properties-common -y
RUN apt-add-repository universe -y
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
COPY requirements.txt requirements.txt
COPY app.py app.py
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]