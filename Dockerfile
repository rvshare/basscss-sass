FROM node:14-slim
WORKDIR /app
COPY package*.json ./
RUN apt-get update && apt-get install -y python make g++ && apt-get clean
RUN npm install
COPY . .
CMD [ "/bin/bash" ]
