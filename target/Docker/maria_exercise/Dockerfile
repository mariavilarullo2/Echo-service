# Auto Generated Dockerfile
FROM ballerina/jre11:v1

LABEL maintainer="dev@ballerina.io"
COPY jardir/ /home/ballerina/jars/ 
RUN addgroup troupe \
    && adduser -S -s /bin/bash -g 'ballerina' -G troupe -D ballerina \
    && apk add --update --no-cache bash \
    && chown -R ballerina:troupe /usr/bin/java \
    && rm -rf /var/cache/apk/*

WORKDIR /home/ballerina
COPY maria-maria_exercise-0.1.0.jar /home/ballerina

EXPOSE  9090
USER 15000

CMD java -Xdiag -cp "maria-maria_exercise-0.1.0.jar:jars/*" 'maria/maria_exercise/0/$_init' || cat ballerina-internal.log
