FROM node:alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# run ngnix - docker run -p 8080:80 <container-id>
# EXPOSE is only for aws elasticbeanstalk
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
