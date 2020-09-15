FROM node:lts-alpine

ENV NODE_ENV 'production'
ENV STRAPI_API_BACKEND_URL 'http://localhost'

COPY ./ ./

RUN npm install && npm run build

FROM nginx

COPY --from=0 build /usr/share/nginx/html





