# GroupApp
Development and production environment using docker-compose and submodules.
so install docker and docker-compose.

Install the current branch's depended submodules with:

```
git submodule update --init
```

## Start the dev-environment with:

```
./dev.sh
```

Add this to your hosts file:

```
127.0.0.1  groupapp.io      groupapp  
127.0.0.1  www.groupapp.io  groupapp  
127.0.0.1  chat.groupapp.io groupapp  
127.0.0.1  api.groupapp.io  groupapp  
```

Add some random users and activities by visiting [api.groupapp.io/generateFakeData](http://api.groupapp.io/generateFakeData)

To add your own user you can post it to the api like this (httpie-syntax):

```
http post 'api.groupapp.io/users' username=rickisen password=123
```

## Production environment:

```
docker-compose build  
docker-compose up
```
