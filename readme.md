```
docker stop jetstore
docker run -d --rm -p 83:8080 --link postgres:postgres  --name jetstore --env "ConnectionStrings:jetstore"="Host=postgres; Database=jetstore; Username=postgres; Password=docker"  tumivn/jetstore:latest
ab -n 5000 -c 100 -k -H "Accept-Encoding: gzip, deflate" http://127.0.0.1:83/
```