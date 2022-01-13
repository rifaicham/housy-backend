FROM node:fermium-alpine
ENV NODE_ENV production
ENV DATABASE_URL postgres://root:root@172.27.53.250/housy
WORKDIR /app
COPY . .
RUN npm install
RUN npm install -g sequelize sequelize-cli
EXPOSE 5000
CMD npm start ; sequelize-cli db:migrate
