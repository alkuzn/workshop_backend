run:
	openssl genpkey -algorithm RSA -out keys/private.key -pkeyopt rsa_keygen_bits:2048 
	openssl rsa -pubout -in keys/private.key -out keys/public.key	
	sudo docker compose up --build