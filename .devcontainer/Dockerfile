FROM benscrane/dev

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_ID

ARG INSTALL_ZSH="true"
ARG INSTALL_SCRIPT_SOURCE="https://gist.githubusercontent.com/benscrane/ad20ab32a254c1f36f76a5e08388fc9a/raw/alpine_install.sh"
ARG INSTALL_SCRIPT_SHA="dev-mode"

RUN apk update\
    && apk add --no-cache curl ca-certificates \
    && curl -sSL ${INSTALL_SCRIPT_SOURCE} -o /tmp/install.sh \
    && if [ "$INSTALL_SCRIPT_SHA" != "dev-mode" ]; then echo "$INSTALL_SCRIPT_SHA" */tmp/install.sh | sha256sum-c -; fi \
    && /bin/ash tmp/install.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" \