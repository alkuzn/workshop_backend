run:
	git submodule init
	git submodule update
	openssl genpkey -algorithm RSA -out auth_servie/keys/private.key -pkeyopt rsa_keygen_bits:2048 
	openssl rsa -pubout -in auth_servie/keys/private.key -out auth_servie/keys/public.key	
	sudo docker compose up --build