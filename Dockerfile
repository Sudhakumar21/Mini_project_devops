FROM Python:3.9.23-alpine3.22

WORKDIR /app

COPY requirement.txt .

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]