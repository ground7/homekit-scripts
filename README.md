# homekit-scripts
Trigger HomeKit Scenes to Run Scripts Over SSH

### 🔥 Fireplace Stream 💧

```bash
systemctl edit --user --force --full fireplace
```

```s
[Unit]
Description=Play VLC Fireplace Video From a Python Script
After=graphical-session.target

[Service]
Environment="DISPLAY=:0"
ExecStart=/usr/bin/cvlc -f --no-osd  /home/admin/Developer/homekit-scripts/fireplace-stream/fireplace.mp4 -L

[Install]
WantedBy=default.target
```
