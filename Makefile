-include .env

.PHONY: deploy


deploy:
	forge create src/Vault.sol:Vault --broadcast\
		--rpc-url $(BASE_SEPOLIA_RPC_URL) \
		--account $(WALLET_NAME) \
		--etherscan-api-key $(ETHERSCAN_API_KEY) \
		--verify