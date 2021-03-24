FROM sonarsource/sonar-scanner-cli

COPY Gemfile ./

RUN bundle install

COPY . .

ENTRYPOINT ["ruby", "/src/scan.rb"]
