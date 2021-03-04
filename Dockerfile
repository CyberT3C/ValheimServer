FROM cm2network/steamcmd:root

LABEL maintainer="Niklas Bartz" \
      name="valheim-server" \
      version="0.2"

#take env from root image
ENV USER steam
ENV HOMEDIR /home/steam

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

RUN chown -R "${USER}:${USER}" "${HOMEDIR}" \
      && chown -R "${USER}:${USER}" "${VALHEIMSERVER_DIR}" 




VOLUME ${VALHEIMSERVER_DIR}
WORKDIR ${VALHEIMSERVER_DIR}

COPY ./docker-entrypoint.sh /home/steam/
RUN chmod +x /home/steam/docker-entrypoint.sh

USER ${USER}

EXPOSE 2456/udp
EXPOSE 2457/udp
EXPOSE 2458/udp

ENTRYPOINT ["/home/steam/docker-entrypoint.sh"]
CMD ["run"]
