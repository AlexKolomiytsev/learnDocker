FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# run ngnix - docker run -p 8080:80 <container-id>
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
