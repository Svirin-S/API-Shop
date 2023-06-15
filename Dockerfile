FROM python:3.9

SHELL ["/bin/bash", "-c"]

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN apt update

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
