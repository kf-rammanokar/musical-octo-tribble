FROM python:3.7-alpine3.15
RUN mkdir /app
ADD ./web-server.py /app
WORKDIR /app
RUN pip3 install prometheus_client
CMD ["python3", "web-server.py"]