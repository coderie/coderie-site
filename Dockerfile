# Choose the official Ruby 2.1.2 image as our starting point
FROM ruby:2.1.2

# Run updates
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Set up working directory
RUN mkdir /myapp
WORKDIR /myapp

# Set up gems
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Finally, add the rest of our app's code
# (this is done at the end so that changes to our app's code
# don't bust Docker's cache)
ADD . /myapp
