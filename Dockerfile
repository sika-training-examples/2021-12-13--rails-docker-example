FROM ruby:3

WORKDIR /project

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["bash", "command-dev.sh"]
EXPOSE 3000