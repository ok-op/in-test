FROM node:16-alpine

WORKDIR /app

# Копирование файлов проекта
COPY package*.json ./
COPY index.js ./
COPY logger.js ./
COPY .env ./

# WOODcraft 
RUN npm install --production

# Создание директории для логов
RUN mkdir -p logs

RUN npm start
