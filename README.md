# homekit-scripts
Trigger HomeKit Scenes to Run Scripts Over SSH

### 🔥 Fireplace Stream 💧

```bash
systemctl edit --user --force --full fireplace
```

```s
[Unit]
Description=Play VLC Fireplace Video
After=graphical-session.target

[Service]
Environment="DISPLAY=:0"
ExecStart=/usr/bin/cvlc -f --no-osd  /home/admin/Developer/homekit-scripts/fireplace-stream/fireplace.mp4 -L

[Install]
WantedBy=default.target
```

### 🌧️ Rain Radar 🌎

```bash
systemctl edit --user --force --full radar
```

```s
[Unit]
Description=Open Home Assistant Rain Radar in Kiosk Mode
After=graphical-session.target

[Service]
Environment="DISPLAY=:0"
ExecStart=/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk http://home-assistant.lan:8123/lovelace/radar?kiosk

[Install]
WantedBy=default.target
```
