# docker-jekyll
A docker image to run jekyll with whalebrew support

## Build

``docker build -t tjamet/jekyll .``

## Install on whalebrew

``whalebrew install tjamet/jekyll``

## Run serve with whalebrew

``jekyll serve -H 0.0.0.0``
Your webite will be available at http://localhost:4000

## Run serve without whalebrew

``docker run --rm -p 4000:4000 -v $PWD:/workdir tjamet/jekyll serve -H 0.0.0.0``

## Anything else?

### Whalebrew

``jekyll --help``

### No whalebrew

``docker run --rm -ti tjamet/jekyll --help``
