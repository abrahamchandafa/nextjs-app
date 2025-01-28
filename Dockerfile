FROM node

LABEL author="abrahamchandafa@gmail.com"

WORKDIR /nextapp

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
EXPOSE 3001

CMD ["npm", "run", "dev"]
