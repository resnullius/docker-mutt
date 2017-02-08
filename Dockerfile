FROM resnullius/alpine:edge
MAINTAINER Jose-Luis Rivas <me@ghostbar.co>

RUN addgroup -g 1000 user && \
      adduser -D -h /home/user -G user -u 1000 user

RUN apk-install \
      git \
      mutt \
      msmtp \
      vim \
      lynx \
      bash \
      gnupg

ENV BROWSER lynx
USER user
ENV HOME /home/user
ENV TERM xterm
RUN mkdir -p $HOME/.mutt/cache/headers $HOME/.mutt/cache/bodies $HOME/config && \
      touch $HOME/.mutt/certificates && \
      git clone --depth 1 https://github.com/ghostbar/dotvim.git $HOME/config/dotvim && \
      bash $HOME/config/dotvim/install.bash

ENV LANG C.UTF-8

ENTRYPOINT ["mutt", "-F", "/Configs/muttrc"]
