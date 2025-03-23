#!/bin/zsh

echo "Starting interactive shell inside the container..."
docker exec -it -u x dev_container /usr/bin/bash
if [[ $? -ne 0 ]]; then
    echo "❌ Failed to start interactive shell inside the container!"
    exit 1
else
    echo "✅ Interactive shell inside the container stopped successfully!"
fi
