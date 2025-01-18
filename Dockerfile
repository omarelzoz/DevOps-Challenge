
FROM python:3.9.21-alpine3.21
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN apk add --no-cache redis

COPY . .
EXPOSE 8000 
CMD redis-server & python hello.py