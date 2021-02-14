FROM node:current-alpine
#FROM node:8.9-alpine
#FROM node:10.15-alpine
#ENV NODE_VERSION 15.5.0
#RUN apk add --update libc6-compat

WORKDIR .

COPY package.json .
#COPY package-lock.json .

RUN npm install
    
#RUN cd node_modules/uws
#RUN npm install
#RUN cd ../../
#RUN npm install uws

COPY . .
#ENV PORT=8080
#EXPOSE 443
#EXPOSE 8081
#CMD ["npm","install", "uws"]
#CMD ["npm", "rebuild", "uws"]
#RUN npm rebuild uws
CMD [ "npm","start"]
#CMD ["npm","run","start"]