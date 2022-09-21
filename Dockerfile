FROM node:16
WORKDIR /opt/app
#COPY ./build ./
#COPY ./package.json ./
#COPY ./nest-cli.json ./
#COPY ./yarn.lock ./
COPY . .
RUN npm install
ENV NODE_ENV production
#RUN yarn build
EXPOSE 3001
CMD ["npm", "run", "start"]
#CMD ["serve","-s","build","-l","80"]