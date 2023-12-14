
gen-cert: gen-ca
	cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=config.json -profile=server server.json | cfssljson -bare server

gen-ca:
	cfssl gencert -initca ca.json | cfssljson -bare ca

update: gen-cert
	mv *.pem ../../nginx/certs.d/

.PHONY: gen-cert gen-ca update