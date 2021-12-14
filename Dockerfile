FROM ruby:3

ARG RAILS_ENV=development
ENV RAILS_ENV=${RAILS_ENV}

WORKDIR /project

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install
COPY . .

CMD ["bash", "command-dev.sh"]
EXPOSE 3000
