docker build -t hello/world:v42 .

docker run -d -p 80:80 -t --name mission01 hello/world:v42

docker exec -it mission01 bash