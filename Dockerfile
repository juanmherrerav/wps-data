FROM mongo:3.6.8
ENV MONGO_SERVER=localhost
#ENV MONGO_PORT=27017
ENV MONGO_DATABASE=promotions
ENV MONGO_INITDB_ROOT_USERNAME=productListUser
ENV MONGO_INITDB_ROOT_PASSWORD=productListPassword

COPY ./database/products.json  /database/products.json

COPY  /entrypoint/products-entrypoint2.sh /docker-entrypoint-initdb.d/init.sh

ENTRYPOINT ["/docker-entrypoint-initdb.d/init.sh"]

