# This dockerfile is used to build sandbox image for docker clouds. It's not meant to be used in projects
FROM ruby:2.7.2
#RUN apk update && apk add --no-cache build-base libxml2-dev libxslt-dev wget openjdk8 bash git tzdata curl nodejs yarn sqlite sqlite-dev

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install --jobs 5
COPY package.json .
#COPY yarn.lock .
#RUN yarn install

COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

#run migrations
RUN rails db:migrate

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "80"]