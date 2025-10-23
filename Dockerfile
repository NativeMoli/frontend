FROM node:8.11.2 AS build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
COPY . .

RUN npm run build

FROM nginx:1.17.1-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /usr/src/app/dist/eSchool .
