# ===== ETAPA 1: clonar y compilar la app Angular =====
FROM node:24-alpine AS build

RUN apk add --no-cache git

ARG REPO_URL=https://github.com/24040100GabinoM/Equipo4-Curso-Ing.git
ARG BRANCH=main
ARG APP_DIR=.

RUN git clone --depth 1 --branch ${BRANCH} ${REPO_URL} /repo

WORKDIR /repo/${APP_DIR}

RUN npm install

RUN npm run build

RUN mkdir -p /output \
  && cp -r dist/*/browser/. /output/ \
  && for d in Gabino Mariana Oscar_Guardiola omar; do \
       if [ -d "/repo/$d" ]; then cp -r "/repo/$d" /output/; fi; \
     done \
  && ls -R /output

# ===== ETAPA 2: servir con nginx =====
FROM nginx:alpine

COPY --from=build /output /usr/share/nginx/html

EXPOSE 80