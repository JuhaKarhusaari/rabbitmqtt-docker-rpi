### Create docker image
- In dockerfile directory run:
```sh
docker build -t rabbitmqtt .
```
- command above creates image 'rabbitmqtt' 
### Create & start container
**Run this before creating systemd service**
```sh
docker run -d --name rabbitmqtt-server -p 15672:15672 -p 15675:15675 -p 1883:1883 -t rabbitmqtt
```
- Check that everything is ok and container running
```sh
docker ps
```
- then stop container 
```sh
docker stop rabbitmqtt-server
```
### Create systemd rabbitmqtt.service (autostart)
- Create rabbitmqtt.service file into /lib/systemd/system/
- then run following commands
```sh
sudo systemctl daemon-reload
sudo systemctl enable rabbitmqtt.service
sudo systemctl start rabbitmqtt.service
```
- Now we can check that service & container is running
```sh
## Service check
sudo systemctl status rabbitmqtt.service
```
```sh
## Container check
docker ps
```
- Now we can reboot system and autostart should be working
```sh
sudo reboot
```
- After boot you can run service & container checks to be sure everything is ok.

## Container ports:
 - 1883  - MQTT  
 - 15672 - RabbitMQ Management (Web) Default user: guest / guest  
 - 15675 - Web MQTT   
