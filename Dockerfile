FROM node:10.6.0-alpine
LABEL maintainer='Josimar Camargo <josimarcamargo@gmail.com>'
LABEL version='7.6.0'
LABEL description='Heroku CLI packaged on alpine linux'

ENV HEROKU_CLI_VERSION '7.6.0'
RUN yarn global add heroku@$HEROKU_CLI_VERSION

ENTRYPOINT ["/usr/local/bin/heroku"]
