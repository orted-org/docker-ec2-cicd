dib:
	docker build -t itsmehs07/dockercicd_img:latest . 
dip:
	docker push itsmehs07/dockercicd_img:latest
dcu:
	docker-compose -f docker-compose.dev.yml up
dcd:
	docker-compose -f docker-compose.dev.yml down
dsd:
	docker stack deploy --with-registry-auth -c docker-compose.yml node-nginx-stack
dsrm:
	docker stack rm node-nginx-stack
dss:
	docker stack services node-nginx-stack 
.PHONY: dib dip dcu dcd dsd dsrm dss