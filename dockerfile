FROM alpine

RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD ["node","app.js"]
EXPOSE 3005
