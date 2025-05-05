FROM node:18

WORKDIR /app

RUN npm install -g json-server

COPY db.json .

EXPOSE 8080

CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "8080"]
