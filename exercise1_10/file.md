There was two ways doing this
One way was allowing others to access application from internet:
docker run -p 3456:8000 web-server 

Other one was restricting access from other ip addresses (outside world):
docker run -p 127.0.0.1:3456:800 web-server 

