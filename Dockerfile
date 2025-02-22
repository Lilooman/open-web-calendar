FROM python:3.7.9-slim-buster

WORKDIR /app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "./app.py" ]
