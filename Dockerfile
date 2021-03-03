FROM cm2network/steamcmd:root

LABEL maintainer="Niklas Bartz" \
      name="valheim-server" \
      version="0.2"

# set env variables
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

#RUN set -e; \
#    bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
#                                      +force_install_dir "${VALHEIMSERVER_DIR}" \
#                                      +app_update "${VALHEIMSERVER_APPID}" \
#                                      +quit

VOLUME ${VALHEIMSERVER_DIR}
WORKDIR ${VALHEIMSERVER_DIR}

COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp


ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["run"]
