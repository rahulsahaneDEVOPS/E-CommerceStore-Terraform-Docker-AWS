#!/bin/bash

set -e

apt-get update -y

apt-get install -y docker.io

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

sleep 10

docker pull mongo:7

docker pull rahulsahane/ecommerce-user-service:latest
docker pull rahulsahane/ecommerce-product-service:latest
docker pull rahulsahane/ecommerce-order-service:latest
docker pull rahulsahane/ecommerce-cart-service:latest
docker pull rahulsahane/ecommerce-frontend:latest

docker network create ecommerce-network || true

docker run -d \
--name mongodb \
--network ecommerce-network \
-p 27017:27017 \
mongo:7

sleep 20

docker run -d \
--name user-service \
--network ecommerce-network \
-p 3001:3001 \
-e MONGODB_URI=mongodb://mongodb:27017/ecommerce_users \
rahulsahane/ecommerce-user-service:latest

docker run -d \
--name product-service \
--network ecommerce-network \
-p 3002:3002 \
-e MONGODB_URI=mongodb://mongodb:27017/ecommerce_products \
rahulsahane/ecommerce-product-service:latest

docker run -d \
--name cart-service \
--network ecommerce-network \
-p 3003:3003 \
-e MONGODB_URI=mongodb://mongodb:27017/ecommerce_carts \
rahulsahane/ecommerce-cart-service:latest

docker run -d \
--name order-service \
--network ecommerce-network \
-p 3004:3004 \
-e MONGODB_URI=mongodb://mongodb:27017/ecommerce_orders \
rahulsahane/ecommerce-order-service:latest

docker run -d \
--name frontend \
--network ecommerce-network \
-p 80:3000 \
-e REACT_APP_USER_SERVICE_URL=http://localhost:3001 \
-e REACT_APP_PRODUCT_SERVICE_URL=http://localhost:3002 \
-e REACT_APP_CART_SERVICE_URL=http://localhost:3003 \
-e REACT_APP_ORDER_SERVICE_URL=http://localhost:3004 \
rahulsahane/ecommerce-frontend:latest
