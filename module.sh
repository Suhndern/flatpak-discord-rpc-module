#!/bin/bash

# Test that ${XDG_RUNTIME_DIR} is not empty
test -n ${XDG_RUNTIME_DIR} || exit 1

# Hook up the Discord IPC sockets
for i in {0..9}; do
    test -S ${XDG_RUNTIME_DIR}/discord-ipc${i} || ln -sf {app/com.discordapp.Discord,${XDG_RUNTIME_DIR}}/discord-ipc-${i};
done
