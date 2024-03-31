#!/bin/bash

tmux new-session -d -s kill1
tmux send-keys -t kill1 "python /home/jayden/bruh/kill.py" Enter

tmux new-session -d -s kill2
tmux send-keys -t kill2 "python /home/jayden/bruh/kill2.py" Enter
