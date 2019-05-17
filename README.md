![](https://cdn.iconscout.com/icon/free/png-128/elasticsearch-226094.png)
![](https://res.cloudinary.com/practicaldev/image/fetch/s--9xjRI7qV--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://i.imgur.com/6B5FbZm.png%3F1)

# SmartSearch
This is an example on how to implement Searchkick, Using Elasticsearch from AWS in Ruby on Rails
The explanation on how did it is available on [Medium](https://medium.com/).

See this project in production at [SmartSearch](https://projects.meetacosta.com/smartsearch) :construction_worker:

## Running Locally

### Clone the repository
```
git clone https://github.com/hectorandac/medium-SmartSearch
cd project
```

### Build the images a run :muscle:
If you which to run this project I encorage you to install Docker in your machine. Skip all that complex installation.

![](https://raw.githubusercontent.com/hectorandac/medium-SmartSearch/master/Docker.Building.gif)

As most of my projects I dockerized the necesary components to facilitate the intalation process.
If you are using docker it is enough to run `docker-compose up`, That's it! 

The project should be running on [localhost:3000](http://localhost:3000/).

### Environment variables
All the environment varibales can be easily modified in the docker-compose.yml file, under the rails service.

## Automated tests
Automated test are already embeded in the docker image notice the command `rails test` in Dockerfile
