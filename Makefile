build-containers:
	docker build -t habitus_ag_rp ./gateway/
	docker build -t habitus_wa_rp ./frontend/
	docker build -t habitus_int_rp ./service/

run-containers:
	docker run -d -p 80:80 --name habitus_ag_rp habitus_ag_rp
	docker run -d -p 80:81 --name habitus_wa_rp habitus_wa_rp
	docker run -d -p 80:82 --name habitus_int_rp habitus_int_rp