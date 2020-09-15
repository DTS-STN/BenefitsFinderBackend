FROM strapi/base

ENV NODE_ENV "production"
ENV STRAPI_API_HOST "0.0.0.0"
ENV STRAPI_PORT 1337
ENV STRAPI_ADMIN_JWT_SECRET ""

COPY ./package.json ./
COPY ./yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 1337

CMD ["yarn", "start"]
