FROM quay.io/projectquay/golang:1.17

ADD src/hello-world.go hello-world.go

ENV MESSAGE "Welcome! I was changed in a branch."
ENV HOME /go

RUN chgrp -R 0 /go && chmod -R g+rwX /go

EXPOSE 8080

LABEL io.openshift.expose-services 8080/http

USER 1001

CMD go run hello-world.go
# CMD pwd












