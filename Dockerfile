FROM node:14-alpine

WORKDIR /source/myrepo

COPY package.json /source/myrepo

RUN cd /source/myrepo && npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]
