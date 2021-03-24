FROM sonarsource/sonar-scanner-cli

COPY Gemfile ./

RUN git clone https://github.com/rbenv/ruby-build.git && \
  PREFIX=/usr/local ./ruby-build/install.sh && \
  ruby-build -v 2.7.2 /usr/local && \
  gem install bundler --no-ri --no-rdoc && bundle install

COPY . .

ENTRYPOINT ["ruby", "/src/scan.rb"]
