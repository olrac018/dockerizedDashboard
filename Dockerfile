FROM python:2.7
ENV PYTHONUNBUFFERED 1
ENV http_proxy 'http://192.168.8.7:3128'
ENV HTTP_PROXY 'http://192.168.8.7:3128'
ENV https_proxy 'http://192.168.8.7:3128'
ENV HTTPS_PROXY 'http://192.168.8.7:3128'

RUN mkdir /kafka_dashboard-master
WORKDIR /kafka_dashboard-master
COPY requirements.txt /kafka_dashboard-master
COPY . /kafka_dashboard-master
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]