FROM python:3.9.23-alpine3.22

WORKDIR /app

COPY requirements.txt .

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]