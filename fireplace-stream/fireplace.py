#!/usr/bin/env python

from subprocess import Popen, PIPE
import time

vid = 'fireplace.mp4'
cmd = 'DISPLAY=:0 cvlc -f --no-osd %s -L' % vid
Popen(cmd, shell=True, stdout=PIPE, stderr=PIPE)
while True:
    print("Hello!")
    time.sleep(5)
