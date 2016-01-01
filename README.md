# keystonejs-docker

Supported tags and respective `Dockerfile` links 
* `0.3`, `latest` ([0.3/Dockerfile](https://github.com/ngyukman/keystonejs-docker/blob/master/0.3/Dockerfile))
* `0.3-sass`, `sass` ([0.3/sass/Dockerfile](https://github.com/ngyukman/keystonejs-docker/blob/master/0.3/sass/Dockerfile))

### Initiative
The image is aiming to deploy keystonejs without rebuilding the image to install dependencies. It is particularly useful when the server has limited computational power, like f1-micro in google cloud.

### To use the image from scratch
1. [Generate the keystonejs project](http://keystonejs.com/getting-started/)

2. Add the mongo db settings into .env
```
MONGO_URI=mongodb://mongo
```

3. Optionally start [mongo db](https://hub.docker.com/_/mongo/)
```
docker run --name your-mongo -d mongo
```

4. Run the container by the following command
```
docker run -p 80:3000 -it -d --link your-mongo:mongo --name keystonejs -v "$PWD":/usr/src/app ngyukman/keystonejs
```
alternatively if sass is enabled
```
docker run -p 80:3000 -it -d --link your-mongo:mongo --name keystonejs -v "$PWD":/usr/src/app ngyukman/keystonejs:sass
```
