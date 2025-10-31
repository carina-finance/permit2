include .env

.PHONY: deploy-permit2 verify-permit2

deploy-permit2:
	forge script --broadcast --rpc-url $(RPC_URL) --private-key $(DEPLOYER_PRIVATE_KEY) script/DeployPermit2.s.sol:DeployPermit2

verify-permit2:
	forge verify-contract --watch $(PERMIT2_CONTRACT_ADDRESS) ./src/Permit2.sol:Permit2 --verifier blockscout --verifier-url https://seitrace.com/pacific-1/api --force