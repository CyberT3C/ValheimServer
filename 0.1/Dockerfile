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

RUN mkdir -p "${VALHEIMSERVER_DIR}"

RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
        wget=1.20.1-1.1 \
		ca-certificates=20190110 \
		lib32z1=1:1.2.11.dfsg-1

RUN set -ex; \
	bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
                                      +force_install_dir "${VALHEIMSERVER_DIR}" \
                                      +app_update "${VALHEIMSERVER_APPID}" \
                                      +quit


COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]