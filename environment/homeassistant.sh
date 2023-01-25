docker pull ghcr.io/home-assistant/home-assistant:stable

docker stop homeassistant

docker rm homeassistant

#install
sudo docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Asia/Yekaterinburg \
  -v /opt/hass/config:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable

#update
sudo docker run -d \
  --name homeassistant \
  --restart=unless-stopped \
  --privileged \
  -e TZ=Asia/Yekaterinburg \
  -v /opt/hass/config:/config \
  -v /dev/serial/by-id:/dev/serial/by-id \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable

sudo docker exec -it homeassistant bash

sudo docker restart homeassistant

exit from container: ctrl+c ctrl+d