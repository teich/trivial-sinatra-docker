FROM ruby:alpine

WORKDIR /app
COPY Gemfile .

RUN bundle install
COPY . /app
EXPOSE 8080

CMD ["bundle", "exec", "ruby", "app.rb"]