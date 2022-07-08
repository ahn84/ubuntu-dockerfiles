FROM ubuntu:20.04

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	locales nginx curl git \
	php php-fpm php-gd php-intl php-mbstring php-curl php-mysql php-pgsql php-xml php-bcmath \
	&& rm -rf /var/lib/apt/lists/* \
	&& ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log


COPY nginx-config/ /etc/nginx/
COPY entrypoint.sh /entrypoint.sh

ENV LANG en_US.utf8

EXPOSE 80 443

ENTRYPOINT ["/entrypoint.sh"]

