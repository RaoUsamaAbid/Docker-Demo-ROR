# Ruby on Rails ToDo App

This is a simple ToDo app built with Ruby on Rails. It includes a Docker setup for local development.

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop) installed on your machine.

## Getting Started

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/todo-app.git
    cd todo-app
    ```

2. Create a `.env` file in the project root and configure your database settings:

    ```env
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=postgres
    POSTGRES_DB=todo_app_development
    ```

3. Build the Docker image:

    ```bash
    docker-compose build
    ```

4. Run the Docker containers:

    ```bash
    docker-compose up
    ```

5. Open a new terminal and enter the Rails container:

    ```bash
    docker exec -it web-1 bash
    ```

6. Inside the container, run the database migrations:

    ```bash
    bundle exec rails db:migrate
    ```

7. Access the application in your browser at [http://localhost:3000](http://localhost:3000).

## Stopping the Application

To stop the application, use the following command:

```bash
docker-compose down
