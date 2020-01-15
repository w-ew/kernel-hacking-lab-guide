#!/bin/sh
while true; do inotifywait -e close_write TRAINING.md; sleep 0.1; make; done
