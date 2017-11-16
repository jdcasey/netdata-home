#!/bin/bash

exec docker run -d --name=netdata --cap-add SYS_PTRACE -v /proc:/host/proc:ro -v /sys:/host/sys:ro -p 19999:19999 netdata-home
