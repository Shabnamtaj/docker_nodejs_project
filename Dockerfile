
#creating base image from nodejs
FROM node:16-alpine
#settinf workinf direc
WORKDIR /usr/src/app
#copy packages
COPY package*.json ./
#run cmd to install all dependieces
RUN npm install
#copy everything to workdir
COPY . .
#exposing port on which it should run
EXPOSE 3000
#cmd to start app
CMD [ "npm","start" ]


