FROM node:14-alpine
WORKDIR /app
COPY package.json .
ARG NODE_ENV
RUN npm install --only=production
COPY . .
EXPOSE 3000
CMD ["node","app.js"]