# You can change this to a newer version of MySQL available at
# https://hub.docker.com/r/mysql/mysql-server/tags/
FROM mysql/mysql-server:8.0.24

COPY config/user.cnf /etc/mysql/my.cnf

RUN cd var/lib/mysql

RUN rm -f ib_logfile*

RUN mkdir "#innodb_redo"

RUN chown mysql:mysql "#innodb_redo"

