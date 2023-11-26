# !/bin/bash
systemctl --user -q is-active uptime && systemctl --user stop uptime || systemctl --user start uptime
