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
.PHONY: dcu dcd dsd dsrm dss