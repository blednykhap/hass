sudo docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=Asia/Yekaterinburg \
  -v /opt/hass:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
  
sudo docker exec -it homeassistant bash
sudo docker restart homeassistant