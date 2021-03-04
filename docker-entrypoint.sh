#!/bin/bash
set -euox pipefail

_server_install() {

    echo "Updating server"
    "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
                                 +force_install_dir "${VALHEIMSERVER_DIR}" \
                                 +app_update "${VALHEIMSERVER_APPID}" \
                                 +quit
}

_server_update() {

    echo "Updating server"
    "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
                                 +force_install_dir "${VALHEIMSERVER_DIR}" \
                                 +app_update "${VALHEIMSERVER_APPID}" \
                                 +quit
}

_main() {

    # if command starts with an option
	if [ "${1:0:1}" = '-' ]; then
        _server_update
		exec ${VALHEIMSERVER_DIR}/valheim_server.x86_64 "$@"
	fi

    if [ "$1" = 'run' ]; then
        _server_update
        exec "${VALHEIMSERVER_DIR}/valheim_server.x86_64" -name "My server" \
                                                            -port "2456" \
                                                            -world "Dedicated" \
                                                            -password "secret"
    fi
    exec "$@"
}

_main "$@"
