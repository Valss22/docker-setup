FROM node

WORKDIR /app

COPY package.json .

ENV PORT 3030
EXPOSE $PORT

RUN if [ "$NODE_ENV" = "development" ]; \
 then npm install; \
 else npm install --production=true; \
 fi

COPY . .

CMD ["npm", "run", "start:dev"]
