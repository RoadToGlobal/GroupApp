# GroupApp
Development and production environment using docker-compose and submodules.

Install the current branch's depended submodules with:
```
git submodule update --init
```

Start the dev-environment with:
```
docker-compose build
docker-compose up
```

For production:
```
docker-compose -f docker-compose-prod.yml build
docker-compose -f docker-compose-prod.yml up
```
