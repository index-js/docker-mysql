# Docker-mysql

MySQL Dockerfile[Dockerfile Is Here.](https://github.com/index-js/docker-mysql.git)

# Features
1. Base Alpine, less RAM
2. No GPG verification

# Run
Expose 3306 33060
```
$ docker run --name some-mysql -p 80:80 -v /data/backup/mysql:/var/lib/mysql -d dotcloudid/mysql
```

# Re-edit
Link to container layer
```
$ docker exec -it some-mysql sh
```

# Reference
- [Docker Practice](https://docs.docker.com/develop/develop-images/dockerfile_best-practices)
- [Alpine Linux Install MariaDB](https://wiki.alpinelinux.org/wiki/MariaDB)
- [Author](http://yanglin.me)
