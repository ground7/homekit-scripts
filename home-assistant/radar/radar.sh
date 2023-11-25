# !/bin/bash
systemctl --user -q is-active radar && systemctl --user stop radar || systemctl --user start radar
