# homekit-scripts
Trigger HomeKit Scenes to Run Scripts Over SSH

### 🔥 Fireplace Stream 💧

```bash

```

```s
[Unit]
Description=Play VLC Fireplace Video From a Python Script
After=graphical-session.target

[Service]
ExecStart=/usr/bin/screen -D -S pi -m /home/pi/Developer/homekit-scripts/fireplace-stream/fireplace.py

[Install]
WantedBy=default.target
```
