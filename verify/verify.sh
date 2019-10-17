openssl verify -verbose -CAfile ../CAUtils/cerRootCA.pem ../LeafUtils/broker.pem 
openssl verify -verbose -CAfile ../CAUtils/cerRootCA.pem ../LeafUtils/client.pem 


#keytool -list -v -keystore keystore.jks
