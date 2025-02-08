FROM node:18
LABEL org.opencontainers.image.authors="jesus.ceron.resdev@synersol.mx"
#WORKDIR /opt/app
#COPY ./strapi/ /opt/app/strapi/
WORKDIR /opt/app/strapi
COPY ./strapi/*package.json /opt/app/strapi
RUN ["npm","install"]
CMD ["npm","run","develop"]

