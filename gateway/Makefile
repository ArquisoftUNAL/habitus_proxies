build-ag-rp:
	docker build -t habitus_ag_rp .

run-ag-rp:
	docker run -d -p 80:80 -p 443:443 --name habitus_ag_rp --env-file .env habitus_ag_rp

# Execute on a linux-based machine, pass HOSTNAME as argument
create-ssl:
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ./certs/localhost.key \
    -out ./certs/localhost.crt \
    -subj "/C=CO/ST=Bogota/L=Bogota/O=ArquisoftUNAL/OU=Habitus/CN=${HOSTNAME}"