I had to do this exercise using remote network, because I am using remote host. 
I used following commands first to build images
```docker build --tag frontend .```
```docker build --tag backend .```

Then I ran the container by using host or user defined bridge network. I published any connection to port 5000 on frontend, and any connection to port 8080 on backend.

docker run --net=my_bridge_net --rm -dit -p 0.0.0.0:5000:5000 --name frontend frontend
docker run --net=my_bridge_net --rm -dit -p 0.0.0.0:8080:8080 --name backend backend

With these I got it to work.