#!/bin/bash

# Set color output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

# Check if running on macOS
if [ "$(uname)" != "Darwin" ]; then
    echo -e "${RED}Error: This tool only supports macOS${NC}"
    exit 1
fi

# Create target directory (if it doesn't exist)
if [ ! -d "/usr/local/bin" ]; then
    sudo mkdir -p /usr/local/bin
fi

# Download script
echo "Downloading CAZ..."
TEMP_FILE=$(mktemp)
curl -fsSL https://raw.githubusercontent.com/wuyax/caz/refs/heads/master/bin/caz -o "$TEMP_FILE"

# Check if download was successful
if [ $? -ne 0 ]; then
    echo -e "${RED}Download failed${NC}"
    rm -f "$TEMP_FILE"
    exit 1
fi

# Move to target location
sudo mv "$TEMP_FILE" /usr/local/bin/caz
sudo chmod 755 /usr/local/bin/caz

# Verify installation
if command -v caz >/dev/null 2>&1; then
    echo -e "${GREEN}CAZ installed successfully!${NC}"
    echo "Use 'caz -h' to view usage instructions"
else
    echo -e "${RED}Installation failed${NC}"
    exit 1
fi