FROM dynatrace/dynatrace-configuration-as-code
LABEL owner="Martin LEKPA <martin@lekpa.fr>"

#COPIE DES CERTIFICATS
COPY certs/* /etc/ssl/certs/
