FROM python:3.12.0a1-slim-bullseye

WORKDIR . /
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]