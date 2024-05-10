FROM node:20


WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN cd frontend && npm install

RUN cd backend && npm install


EXPOSE 3000
EXPOSE 5000

CMD ["npm","run","dev"]

