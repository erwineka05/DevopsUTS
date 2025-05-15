FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt && pip list

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
