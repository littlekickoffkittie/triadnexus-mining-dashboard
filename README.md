# TriadNexus Mining

A blockchain mining system with a visual dashboard built with Next.js, Hardhat, and TypeScript.

## Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/triadnexus-mining
cd triadnexus-mining

# Make startup script executable
chmod +x startup.sh

# Run the startup script
./startup.sh
```

## Manual Setup

If you prefer to run commands manually:

1. Install dependencies:
```bash
npm install
```

2. Start local Hardhat node:
```bash
npx hardhat node
```

3. Deploy the TriadToken contract (in a new terminal):
```bash
npx hardhat run scripts/deploy.cjs --network localhost
```

4. Start the mining dashboard:
```bash
npm run mine
```

## Requirements

- Node.js v18 or higher
- npm v8 or higher

## Project Structure

- `/contracts` - Smart contracts (Solidity)
- `/scripts` - Deployment scripts
- `/src`
  - `/app` - Next.js frontend
  - `/cli` - Mining dashboard CLI
  - `/components` - React components
  - `/lib` - Shared utilities and mining logic

## Mining Dashboard

The mining dashboard provides a visual interface for:
- Real-time hash rate monitoring
- Block mining visualization
- Wallet balance and rewards tracking
- Mining statistics

### Controls
- `q` or `Esc` - Exit the dashboard
- Arrow keys - Navigate block list
- Mouse scroll - Scroll through logs

## Smart Contract

The TriadToken (TRIAD) contract features:
- ERC20 token implementation
- Mining rewards (50 TRIAD per block)
- 1-minute cooldown between mining rewards
- Initial supply of 1 million TRIAD

## Development

To run the Next.js development server:
```bash
npm run dev
```

## License

ISC License
