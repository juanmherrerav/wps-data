FROM mongo:3.6.8
ENV MONGO_SERVER=
ENV MONGO_PORT=27017
ENV MONGO_DATABASE=promotions
ENV MONGO_INITDB_ROOT_USERNAME=productListUser
ENV MONGO_INITDB_ROOT_PASSWORD=productListPassword

COPY ./database/products.json  /database/products.json

COPY  /entrypoint/products-entrypoint.sh /docker-entrypoint-initdb.d/init.sh

ENTRYPOINT ["/entrypoint/products-entrypoint.sh"]


#FROM mongo:3.6.8

#COPY database/products.json /products.json
#CMD mongoimport --host mongodb --username productListUser --password productListPassword --authenticationDatabase admin  --db promotions --collection products --type json --file /products.json --jsonArray --mode upsert
