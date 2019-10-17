openssl pkcs12 -export -out broker.keystore.pfx -inkey ../LeafUtils/broker.key -in ../LeafUtils/broker.pem
openssl pkcs12 -export -out client.keystore.pfx -inkey ../LeafUtils/client.key -in ../LeafUtils/client.pem
openssl pkcs12 -export -out broker.truststore.pfx -inkey ../CAUtils/keyRootCA.key -in ../CAUtils/cerRootCA.pem

keytool -importkeystore -srckeystore broker.truststore.pfx -srcstoretype pkcs12 -destkeystore broker.truststore.jks -deststoretype jks -deststorepass confluent
keytool -importkeystore -srckeystore broker.keystore.pfx -srcstoretype pkcs12 -destkeystore broker.keystore.jks -deststoretype jks -deststorepass confluent
keytool -importkeystore -srckeystore client.keystore.pfx -srcstoretype pkcs12 -destkeystore client.keystore.jks -deststoretype jks -deststorepass confluent

cp broker.truststore.jks client.truststore.jks
