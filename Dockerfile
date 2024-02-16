FROM python:alpine3.10
 
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt
COPY .. /app
EXPOSE 5000

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]