➜  projects docker container ps         n    h                
docker: 'econtainer' is not a docker command.
See 'docker --help'
➜  projects docker container ps 
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS       NAMES
de1ea6acd7b6   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   12 minutes ago   Up 11 minutes               charming_einstein
b5bd82222fb3   client                                     "bash"                  13 days ago      Up 15 minutes   58250/tcp   client
ca48757685ca   server                                     "python -m app"         13 days ago      Up 15 minutes   58250/tcp   server
➜  projects docker exec charming_einstein sh tail -f ./text.log
sh: can't open 'tail': No such file or directory
➜  projects docker exec charming_einstein sh tail -f /text.log 
sh: can't open 'tail': No such file or directory
➜  projects docker exec charming_einstein tail -f /text.log
tail: can't open '/text.log': No such file or directory
tail: no files
➜  projects docker exec charming_einstein /text.log 
OCI runtime exec failed: exec failed: unable to start container process: exec: "/text.log": stat /text.log: no such file or directory: unknown
➜  projects docker exec charming_einstein ./text.log
OCI runtime exec failed: exec failed: unable to start container process: exec: "./text.log": permission denied: unknown
➜  projects docker exec charming_einstein bash      
OCI runtime exec failed: exec failed: unable to start container process: exec: "bash": executable file not found in $PATH: unknown
➜  projects docker attach charming_einstein   
Wrote text to /usr/src/app/text.log
Wrote text to /usr/src/app/text.log
^C%                                                                                                                                                                                                                                                                                                                            
➜  projects docker start charming_einstein    
charming_einstein
➜  projects docker exec charming_einstein sh -c "tail -f ./text.log"
2023-01-04 07:35:22 +0000 UTC
2023-01-04 07:35:24 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-01-04 07:35:26 +0000 UTC
2023-01-04 07:35:28 +0000 UTC
2023-01-04 07:35:30 +0000 UTC
2023-01-04 07:35:32 +0000 UTC
2023-01-04 07:35:34 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-01-04 07:35:36 +0000 UTC
2023-01-04 07:35:38 +0000 UTC
2023-01-04 07:35:40 +0000 UTC
2023-01-04 07:35:42 +0000 UTC
2023-01-04 07:35:44 +0000 UTC
^C
➜  projects docker images
REPOSITORY                          TAG           IMAGE ID       CREATED         SIZE
ubuntu                              18.04         e28a50f651f9   37 hours ago    63.1MB
bob                                 latest        e28a50f651f9   37 hours ago    63.1MB
bob                                 not_so_good   e28a50f651f9   37 hours ago    63.1MB
composetest_web                     latest        69df174267fc   4 days ago      215MB
client                              latest        3da4776cb5c0   13 days ago     921MB
server                              latest        2991bab646e1   13 days ago     995MB
redis                               alpine        8ace02fae412   2 weeks ago     29.9MB
bash                                latest        2552d69c6348   2 weeks ago     12.9MB
ubuntu                              latest        6b7dfa7e8fdb   3 weeks ago     77.8MB
python                              3.8           a45b78fe1e8e   3 weeks ago     913MB
python                              3.10          cf0643aafe49   3 weeks ago     921MB
astranero/python                    latest        b9886e761095   4 weeks ago     932MB
python                              latest        b9886e761095   4 weeks ago     932MB
nginx                               latest        ac8efec875ce   4 weeks ago     142MB
alpine                              latest        49176f190c7e   6 weeks ago     7.05MB
devopsdockeruh/simple-web-service   alpine        fd312adc88e0   22 months ago   15.7MB
➜  projects docker pull devopsdockeruh/simple-web-service:ubuntu
ubuntu: Pulling from devopsdockeruh/simple-web-service
5d3b2c2d21bb: Pull complete 
3fc2062ea667: Pull complete 
75adf526d75b: Pull complete 
965d4bbb586a: Pull complete 
4f4fb700ef54: Pull complete 
Digest: sha256:d44e1dce398732e18c7c2bad9416a072f719af33498302b02929d4c112e88d2a
Status: Downloaded newer image for devopsdockeruh/simple-web-service:ubuntu
docker.io/devopsdockeruh/simple-web-service:ubuntu
➜  projects docker images                                       
REPOSITORY                          TAG           IMAGE ID       CREATED         SIZE
bob                                 latest        e28a50f651f9   37 hours ago    63.1MB
bob                                 not_so_good   e28a50f651f9   37 hours ago    63.1MB
ubuntu                              18.04         e28a50f651f9   37 hours ago    63.1MB
composetest_web                     latest        69df174267fc   4 days ago      215MB
client                              latest        3da4776cb5c0   13 days ago     921MB
server                              latest        2991bab646e1   13 days ago     995MB
redis                               alpine        8ace02fae412   2 weeks ago     29.9MB
bash                                latest        2552d69c6348   2 weeks ago     12.9MB
ubuntu                              latest        6b7dfa7e8fdb   3 weeks ago     77.8MB
python                              3.8           a45b78fe1e8e   3 weeks ago     913MB
python                              3.10          cf0643aafe49   3 weeks ago     921MB
astranero/python                    latest        b9886e761095   4 weeks ago     932MB
python                              latest        b9886e761095   4 weeks ago     932MB
nginx                               latest        ac8efec875ce   4 weeks ago     142MB
alpine                              latest        49176f190c7e   6 weeks ago     7.05MB
devopsdockeruh/simple-web-service   ubuntu        4e3362e907d5   22 months ago   83MB
devopsdockeruh/simple-web-service   alpine        fd312adc88e0   22 months ago   15.7MB
➜  projects 