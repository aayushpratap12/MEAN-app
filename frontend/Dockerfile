# Stage 1: Build Angular app
FROM node:18 AS build

WORKDIR /app

# Install Angular CLI inside container
RUN npm install -g @angular/cli@15

COPY package*.json ./
RUN npm install

COPY . .

# Build Angular app inside container (no local CLI needed)
RUN ng build angular-15-crud --configuration production

# Stage 2: Serve with Nginx
FROM nginx:latest
COPY --from=build /app/dist/angular-15-crud /usr/share/nginx/html

EXPOSE 80
