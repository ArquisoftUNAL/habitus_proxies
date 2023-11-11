create-ssl-certs: 
	docker build -t ssl -f Dockerfile.ssl .
	docker run --name ssl -v certs:/certs ssl

build-wa-rp:
	docker build -t wa_rp .

run-wa-rp:
	docker run -d -p 80:80 -p 443:443 -v certs:/etc/nginx/certs --name wa_rp wa_rp

# Execute on a linux-based machine, pass HOSTNAME as argument
create-ssl:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ./certs/localhost.key \
    -out ./certs/localhost.crt \
    -subj "/C=CO/ST=Bogota/L=Bogota/O=ArquisoftUNAL/OU=Habitus/CN=${HOSTNAME}"