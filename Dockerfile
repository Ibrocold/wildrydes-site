FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install nginx
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Copy the website files to the nginx default directory
COPY . /var/www/html/


# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]