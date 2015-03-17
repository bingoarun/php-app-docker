Slideshare : http://www.slideshare.net/bingoarunprasath/docker-demo-on-php-application-deployment

HOW TO DEPLOY:

--------------

Build a image for app deployment. From the folder downloaded, run the command
 
	$docker build -t bingoarunprasath/php .

Run the image by this command

	$docker run -i -t -d -p 80 -v /root/php-app/www:/var/www bingoarunprasath/php /bin/bash

Run "docker ps" command to see the launched container. Note down the port number. ' 0.0.0.0:49172->80/tcp ' (in my case 49172)

Now you can see your web application by visiting
 
	http://<your-host-ip>:49172   or

	http://<your-container-ip>:80
  
(You can view your container ID by "docker ps" and can view your container IP by "docker inspect <container-ID>")
