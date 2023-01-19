FROM node:18-alpine
WORKDIR /.
COPY . /
RUN npm install -g nodemon
RUN npm install
ENTRYPOINT [ "nodemon", "app.js" ]
EXPOSE 3000
CMD [ "npm", "run", "dev" ]