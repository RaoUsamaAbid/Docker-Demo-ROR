# Dockerfile

FROM ruby:2.7.5

# Set the working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock to the working directory
COPY Gemfile* ./

# Install any needed gems
RUN bundle install

# Copy the local code to the container
COPY . .

# Copy the entrypoint script into the image
COPY entrypoint.sh ./entrypoint.sh

# Give execute permissions to the entrypoint script
RUN chmod +x ./entrypoint.sh

# Expose port 3000 to the outside world
EXPOSE 3000

RUN apt-get update && apt-get install -y nodejs && apt-get install -y netcat

# Set the entrypoint script as the default command
ENTRYPOINT ["./entrypoint.sh"]
