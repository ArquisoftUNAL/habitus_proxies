FROM nginx
ARG DOMAIN
RUN apt-get update -qq && apt-get -y install apache2-utils
ENV NODE_ROOT /var/www/web-server
WORKDIR $NODE_ROOT
RUN mkdir log
COPY app.conf /tmp/app.nginx
RUN envsubst '$DOMAIN, $NODE_ROOT' < /tmp/app.nginx > /etc/nginx/conf.d/default.conf
COPY --from=ssl /ssl/${DOMAIN}.crt /etc/nginx/ssl/
COPY --from=ssl /ssl/${DOMAIN}.key /etc/nginx/ssl/
EXPOSE 80 443
CMD [ "nginx", "-g", "daemon off;" ]
