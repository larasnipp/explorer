FROM makevoid/ruby-coffee

ADD Gemfile      /app
ADD Gemfile.lock /app
RUN bundle

ADD .     /app
RUN bundle

CMD bundle exec rackup -o 0.0.0.0
