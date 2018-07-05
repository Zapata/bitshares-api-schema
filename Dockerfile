FROM node:6 as build

ADD . /bitshares-api-schema
WORKDIR /bitshares-api-schema
RUN npm install -g mzernetsch/jrgen jrgen-plugin-bitshares
RUN jrgen docs/html ./BitsharesAPI.schema.json

FROM nginx:alpine
COPY --from=build /bitshares-api-schema/BitsharesAPI.html /usr/share/nginx/html/index.html
