FROM node:10-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g sequelize sequelize-cli
EXPOSE 5000
CMD npm start ; sequelize-cli db:migrate
