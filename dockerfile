# Create a Jekyll container from a Ruby Alpine image

# At a minumum use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cashe build-base gcc cmake git

# Update the Ruby bundeler and install Jekyll
RUN gem update bundler && gem install bundler jekyll