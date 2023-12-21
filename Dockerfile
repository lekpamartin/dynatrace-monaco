FROM dynatrace/dynatrace-configuration-as-code
LABEL owner="Martin LEKPA <martin@lekpa.fr>" \
    && org.opencontainers.image.description="Configurez automatiquement votre cluster dynatrace" \
    && org.opencontainers.image.licenses=MIT

#COPIE DES CERTIFICATS
COPY certs/* /etc/ssl/certs/
