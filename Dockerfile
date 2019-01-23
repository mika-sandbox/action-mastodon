FROM node:lts-alpine

LABEL name="GitHub Action for Mastodon"
LABEL version="0.1.0"
LABEL repository="http://github.com/mika-f/action-mastodon"
LABEL homepage="http://github.com/mika-f/action-mastodon"
LABEL maintainer="Fuyuno Mikazuki <mikazuki_fuyuno@outlook.com>"

LABEL com.github.actions.name="GitHub Action for Mastodon"
LABEL com.github.actions.description="Sends a messages to Mastodon Instance"
LABEL com.github.actions.icon="send"
LABEL com.github.actions.color="red"

COPY "package.json" "/package.json"
COPY "package-lock.json" "/package-lock.json"
COPY "index.js" "/index.js"

RUN npm set progress=false && \
  npm config set depth=0 && \
  npm install --production

CMD ["node", "index.js"]
ENTRYPOINT ["node", "index.js"]