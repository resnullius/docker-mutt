FROM debian:unstable
MAINTAINER Jose-Luis Rivas <me@ghostbar.co>

RUN addgroup -g 1000 user && \
      adduser -D -h /home/user -G user -u 1000 user

RUN apt-get install -y \
      git \
      mutt-patched \
      msmstp \
      vim-nox \
      lynx \
      zsh \
      gnupg2

ENV BROWSER lynx
USER user
ENV HOME /home/user
ENV TERM xterm-256color
RUN mkdir -p $HOME/.mutt/cache/headers $HOME/.mutt/cache/bodies $HOME/config && \
      touch $HOME/.mutt/certificates && \
      git clone --depth 1 https://github.com/ghostbar/dotvim.git $HOME/config/dotvim && \
      zsh $HOME/config/dotvim/install.zsh

ENV LANG C.UTF-8
