# NootToken

🥺

## requirements

- foundry

## deploying / interacting

Create a `.env` file as follows:
```
PRIVATE_KEY=<your-private-key>
```

For example, to run a script on Sepolia:

```bash
forge script script/NootToken.s.sol --rpc-url=https://rpc.sepolia.org --broadcast --verify -vvvv
```