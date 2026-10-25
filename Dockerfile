FROM zot.jamet.me/docker-hub/library/ruby:3.3.13-alpine

RUN apk add --no-cache build-base && \
    gem install --no-document rexml -v 3.2.5 && \
    gem install --no-document kramdown -v 2.4.0 && \
    gem install --no-document public_suffix -v 4.0.7 && \
    gem install --no-document ffi -v 1.15.5 && \
    gem install --no-document rb-inotify -v 0.10.1 && \
    gem install --no-document listen -v 3.7.1 && \
    gem install --no-document jekyll-sass-converter -v 2.1.0 && \
    gem install --no-document i18n -v 1.14.8 && \
    gem install --no-document webrick -v 1.9.2 && \
    gem install --no-document jekyll -v 4.3.4 && \
    apk del build-base && \
    apk add --no-cache libstdc++ libgcc && \
    mkdir -p /workdir
WORKDIR ["/workdir"]
ENTRYPOINT ["jekyll"]
LABEL   io.whalebrew.config.ports='["4000:4000"]'
