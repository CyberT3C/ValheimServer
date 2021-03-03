# starting with a base image which includes
# -debain image 
# -steamcmd on top of it

FROM cm2network/steamcmd:root

# steam is linking software with IDs
ENV VALHEIMSERVER_APPID 896660
ENV VALHEIMSERVER_DIR "${HOMEDIR}/valheimserver"


RUN set -e; \
        { \
            echo 'Valheim Dedicated Server'; \
            echo 'steam app id = $VALHEIMSERVER_APPID'; \
            echo 'directory = $VALHEIMSERVER_DIR'; \
	    } > /var/log/valheim_install

