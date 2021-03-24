FROM sonarsource/sonar-scanner-cli

COPY Gemfile ./

RUN apk upgrade --no-cache --update && \
    apk add --no-cache --update ca-certificates make bash build-base \
    apk add openssl
RUN cd /tmp && \
    wget -O - https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz | tar xzvf - && \
    ( cd ruby-install-0.6.1 && \
      make install ) && \
    rm -rf ruby-install-*
RUN ruby-install --cleanup ruby 2.7.2

RUN gem install bundler --no-ri --no-rdoc && bundle install

COPY . .

ENTRYPOINT ["ruby", "/src/scan.rb"]
