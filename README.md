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
ExecStart=/usr/bin/cvlc -f --no-osd  --input-repeat=99999999999 /home/admin/Developer/homekit-scripts/fireplace-stream/fireplace.mp4

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
ExecStart=/usr/bin/chromium-browser --kiosk --incognito --noerrdialogs --hide-scrollbars --force-device-scale-factor=3.0 --canvas-oop-rasterization --ignore-gpu-blocklist --enable-gpu-rasterization --enable-zero-copy --enable-drdc --enable-features=VaapiVideoDecoder http://home-assistant.lan:8123/lovelace/radar?kiosk

[Install]
WantedBy=default.target
```

### 🛜 Network Monitor 🖥️

```bash
systemctl edit --user --force --full uptime
```

```s
[Unit]
Description=Open Uptime Kuma in Kiosk Mode
After=graphical-session.target

[Service]
Environment="DISPLAY=:0"
ExecStart=/usr/bin/chromium-browser --kiosk --incognito --noerrdialogs --hide-scrollbars --force-device-scale-factor=3.0 http://uptime.hutchinson.house/status/family-room-tv

[Install]
WantedBy=default.target
```
