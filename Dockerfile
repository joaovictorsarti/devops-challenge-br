FROM python:3.6

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt

EXPOSE 8080:80
CMD ["python", "/app/myapp.py"]
