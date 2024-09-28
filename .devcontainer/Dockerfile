FROM ruby:3.4-rc-alpine3.20


RUN apk update && apk add --no-cache \
    git \
    curl \
    zsh \
    bash \
    starship \
    openssh \
    make \
    gcc \
    musl-dev \
    linux-headers \
    openldap-clients \
    libaio \
    unzip \
    gcompat \
    ruby \
    ruby-dev \
    ruby-bundler \
    && adduser -D -s /bin/zsh -u 1000 dev


USER dev

ENV PATH="/home/dev/.local/bin:${PATH}"
ENV ZSH_THEME starship
ENV HATSTALL_ENV=dev

COPY .zshrc /home/dev

SHELL ["/bin/zsh", "-c"]


WORKDIR /workspace
COPY ../ .


CMD ["tail", "-f", "/dev/null"]
