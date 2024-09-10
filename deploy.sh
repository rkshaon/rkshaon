#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'  # No Color (reset to default)
RESET='\033[0m'  # No Color (reset to default)

echo -e "${GREEN}Deployment proces start...${RESET}"
echo -e "${BLUE}Pull the latest code from GitHub${RESET}"
echo -e "${YELLOW}=======================================${RESET}"

sudo git pull origin master

echo -e "${BLUE}Navigate to the FRONTEND directory${RESET}"
echo -e "${YELLOW}=======================================${RESET}"
cd /var/www/rkshaon.info/frontend

echo -e "${BLUE}Install Dependencies${RESET}"
echo -e "${YELLOW}=======================================${RESET}"
sudo npm install

echo -e "${BLUE}Building${RESET}"
echo -e "${YELLOW}=======================================${RESET}"
sudo npm run build

echo -e "${RED}Finish${RESET}..."
