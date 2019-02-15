FROM nginx:1.15-alpine

LABEL author="Lucio Rodriguez"
## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*
##  From 'builder' stage copy over the artifacts in dist folder to default nginx public folder
COPY ./dist/gitdoccciazu /usr/share/nginx/html
EXPOSE 80 443
ENTRYPOINT ["nginx","-g","daemon off;"]
