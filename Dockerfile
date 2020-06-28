FROM alpine:3.12.0

RUN apk update && apk upgrade \
  && apk add --no-cache \
    git \
    openssh-client \
    less \
    bash \
    libgcc \
    libstdc++ \
    curl \
    wget \
    unzip \
    nano \
    jq \
    gnupg \
    procps \
    coreutils \
    ca-certificates \
    krb5-libs \
    libintl \
    libssl1.1 \
    lttng-ust \
    tzdata \
    userspace-rcu \
    zlib \
    shadow \
    openssl