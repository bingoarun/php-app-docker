############################################################
# Dockerfile to build MongoDB container images
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM bingoarunprasath/ubuntu-new
#RUN apt-get update

# File Author / Maintainer
MAINTAINER Example Arun

RUN apt-get install apache2 -y


#RUN service apache2 start

# Create the default data directory

ADD apache2files/apache2.conf /etc/apache2/apache2.conf
ADD apache2files/ports.conf /etc/apache2/ports.conf

##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 80

RUN echo 'service apache2 start ' > /etc/bash.bashrc

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
#CMD service apache2 start

# Set default container command
#ENTRYPOINT /bin/bash

