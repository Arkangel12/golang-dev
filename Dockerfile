#Example
FROM golang

LABEL "Author"="Argel Bejarano" "Description"="Golang Container for Development"

RUN cd /go/src && mkdir github.com && cd github.com \
    && mkdir Arkangel12 && cd Arkangel12 && echo "Your Go Code Here"

WORKDIR /go/src/github.com/Arkangel12
#Change Arkangel12 by your user in github

EXPOSE 8080

#You must be at the path that you want to share to the container
#docker run -it -p 8080:8080 -v "$(pwd)":/go/src/github.com/Arkangel12 --name godev golang
