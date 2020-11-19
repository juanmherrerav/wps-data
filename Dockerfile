FROM mongo:3.6.8

COPY database/01-products.json /database/01-products.json

CMD mongoimport --host mongodb --username productListUser --password productListPassword --authenticationDatabase admin --db promotions --collection products --type json --file /database/01-products.json --mode upsert

