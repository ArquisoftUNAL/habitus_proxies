create-ssl-certs: 
	docker build -t ssl -f Dockerfile.ssl .
	docker run --name ssl -v certs:/certs ssl

build-wa-rp:
	docker build -t wa_rp .

run-wa-rp:
	docker run -d -p 80:80 -p 443:443 -v certs:/etc/nginx/certs --name wa_rp wa_rp