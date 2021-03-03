# starting with a base image which includes
# -debain image 
# -steamcmd on top of it

FROM cm2network/steamcmd:root

LABEL maintainer="Niklas Bartz"  \
      name="valheim-server" \
      version="0.11"

# set env
# steam is linking software with IDs
ENV VALHEIMSERVER_APPID 896660
ENV VALHEIMSERVER_DIR "${HOMEDIR}/valheimserver"


RUN set -e; \
        { \
            echo "Valheim Dedicated Server"; \
            echo "steam app id = $VALHEIMSERVER_APPID"; \
            echo "directory = $VALHEIMSERVER_DIR"; \
	    } > /var/log/valheim_install

RUN mkdir -p "${VALHEIMSERVER_DIR}"

RUN chown -R "${USER}:${USER}" "${HOMEDIR}" 
RUN chown -R "${USER}:${USER}" "${VALHEIMSERVER_DIR}" 

USER ${USER}

RUN set -e; \
    bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
                                      +force_install_dir "${VALHEIMSERVER_DIR}" \
                                      +app_update "${VALHEIMSERVER_APPID}" \
                                      +quit

# edit start_server.sh
# todo

VOLUME ${VALHEIMSERVER_DIR}
WORKDIR ${VALHEIMSERVER_DIR}

EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp

# future
# COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["docker-entrypoint.sh"]
#CMD ["valheimserverd"]