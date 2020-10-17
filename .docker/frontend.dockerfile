# develop stage
FROM node:lts-alpine as develop-stage
WORKDIR /frontend
COPY ./frontend/package*.json ./
RUN npm install
RUN npm install -g @vue/cli
COPY ./frontend/ .

# build stage
FROM develop-stage as build-stage
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /frontend/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
