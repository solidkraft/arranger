FROM sonarsource/sonar-scanner-cli

COPY Gemfile ./

RUN apk --no-cache add linux-headers musl-dev gcc

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev libxml2-dev libxslt-dev && \
    apk del  build_deps

RUN git clone https://github.com/rbenv/ruby-build.git && \
  PREFIX=/usr/local ./ruby-build/install.sh && \
  ruby-build -v 2.7.2 /usr/local && \
  gem install bundler --no-ri --no-rdoc && bundle install

COPY . .

ENTRYPOINT ["ruby", "/src/scan.rb"]
