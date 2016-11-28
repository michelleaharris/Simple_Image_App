# Pull from base Ubuntu image
FROM ubuntu

# Do system updates and install dependencies
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git wget
RUN apt-get clean

# Download Drone.io
RUN wget http://downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb

# Expose the Drone.io port
EXPOSE 8080

ENV DRONE_SERVER_PORT 0.0.0.0:8080
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

# Define our GitHub oAuth keys below
ENV DRONE_GITHUB_CLIENT 129b75af36c072665001
ENV DRONE_GITHUB_SECRET 9658baac7930b4d122936bde3530556827a5c7f5

# The command we'll be running when the container starts
CMD /usr/local/bin/droned