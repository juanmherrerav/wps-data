FROM mongo:3.6.8
ENV MONGO_SERVER=
ENV MONGO_PORT=${PORT:8080}
ENV MONGO_DATABASE=promotions
ENV MONGO_INITDB_ROOT_USERNAME=productListUser
ENV MONGO_INITDB_ROOT_PASSWORD=productListPassword

COPY ./database/products.json  /database/products.json

COPY  /entrypoint/products-entrypoint2.sh /docker-entrypoint-initdb.d/init.sh

ENTRYPOINT ["/docker-entrypoint-initdb.d/init.sh"]

