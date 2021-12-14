FROM python:3.7.2

WORKDIR .
COPY . .

# RUN apk add --no-cache gcc musl-dev linux-headers geos libc-dev postgresql-dev
# COPY requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

ENV DB_USERNAME=postgres
ENV DB_PASSWORD=d293aW1zb3NlY3VyZQ==
ENV DB_NAME=geoconnections
ENV DB_HOST=postgres
ENV DB_PORT=5432

EXPOSE 5003


CMD ["python", "consumer.py"]
