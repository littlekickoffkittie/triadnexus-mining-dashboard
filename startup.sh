#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting TriadNexus Setup...${NC}"

# Install dependencies
echo -e "${BLUE}Installing dependencies...${NC}"
npm install

# Start local Hardhat node in background
echo -e "${BLUE}Starting Hardhat node...${NC}"
npx hardhat node > hardhat.log 2>&1 &
HARDHAT_PID=$!

# Wait for node to start
sleep 5

# Deploy contract
echo -e "${BLUE}Deploying TriadToken contract...${NC}"
npx hardhat run scripts/deploy.cjs --network localhost

# Start mining dashboard
echo -e "${GREEN}Starting mining dashboard...${NC}"
npm run mine

# Cleanup
kill $HARDHAT_PID
