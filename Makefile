run:
	git submodule init
	git submodule update
	openssl genpkey -algorithm RSA -out auth_service/keys/private.key -pkeyopt rsa_keygen_bits:2048 
	openssl rsa -pubout -in auth_service/keys/private.key -out auth_service/keys/public.key	
	sudo docker compose up --build