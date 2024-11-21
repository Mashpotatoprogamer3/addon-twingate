#!/usr/bin/env bash

echo "Starting Twingate Add-on..."

# Read the Docker command from the configuration
DOCKER_COMMAND=$(jq --raw-output '.docker_command' /data/options.json)

# Validate the command
if [ -z "$DOCKER_COMMAND" ]; then
    echo "Error: No Docker command provided in the configuration."
    exit 1
fi

# Execute the provided Docker command
echo "Executing: $DOCKER_COMMAND"
eval $DOCKER_COMMAND

# Keep the container running
tail -f /dev/null
