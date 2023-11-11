FROM nginx

RUN apt-get update -qq && apt-get -y install apache2-utils
ENV NODE_ROOT /var/www/soap_proxy
WORKDIR $NODE_ROOT
RUN mkdir log
COPY ./template.conf /etc/nginx/templates/default.conf.template
# RUN envsubst '$NODE_ROOT' < /tmp/app.nginx > /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]