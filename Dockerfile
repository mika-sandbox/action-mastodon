FROM alpine:latest

LABEL name="GitHub Action for Mastodon"
LABEL version="0.1.0"
LABEL repository="http://github.com/mika-f/action-mastodon"
LABEL homepage="http://github.com/mika-f/action-mastodon"
LABEL maintainer="Fuyuno Mikazuki <mikazuki_fuyuno@outlook.com>"

LABEL com.github.actions.name="GitHub Action for Mastodon"
LABEL com.github.actions.description="Sends a messages to Mastodon Instance"
LABEL com.github.actions.icon="send"
LABEL com.github.actions.color="red"

RUN apk --update add curl && rm -rf /var/cache/apk/*

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
