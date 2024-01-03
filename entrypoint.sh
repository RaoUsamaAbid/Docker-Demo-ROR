#!/bin/bash

# Wait for the database to be ready
echo "Waiting for the database to be ready..."
while ! nc -z db 5432; do
  sleep 1
done
echo "Database is ready!"

# Run pending migrations
echo "Running pending migrations..."
bundle exec rails db:migrate

# Start Rails server
echo "Starting Rails server..."
exec bundle exec rails server -b 0.0.0.0
