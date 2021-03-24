FROM ruby:2.7-alpine

COPY Gemfile ./

RUN bundle install

COPY . .

ENTRYPOINT ["ruby", "/src/scan.rb"]
