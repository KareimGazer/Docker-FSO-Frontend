FROM node:20

WORKDIR /usr/src/app

ENV VITE_BACKEND_URL="http://localhost:3000/"

COPY . .

RUN npm ci

CMD ["npm", "run", "dev", "--", "--host"]