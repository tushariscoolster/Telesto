FROM node:alpine
RUN mkdir -p /code
WORKDIR /code
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "index.js"]
