git clone git@github.com:yourname/new-project.git
cd new-project
docker compose build
docker compose run backend rails db:create db:migrate
docker compose up