FROM alpine
LABEL "repository"="https://github.com/melheffe/version_release_composer"
LABEL "homepage"="https://github.com/melheffe/version_release_composer"
LABEL "maintainer"="Chris Rodriguez"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq

ENTRYPOINT ["/entrypoint.sh"]