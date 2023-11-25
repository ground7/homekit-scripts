# !/bin/bash
systemctl --user -q is-active fireplace && systemctl --user stop fireplace || systemctl --user start fireplace
