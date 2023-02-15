# MULTI-SIGNATURE WALLET

Multi-signature smart-contract A multi-signature contract acts as a "wallet" as it can hold and transfer funds. It is called "multi-sig" because it typically needs greater than one signatures to approve any wallet activity such as transferring funds out. Since multi-sigs are powered by multiple keys, they avoid a single point of failure, which makes it significantly harder for funds to be compromised. ⛓ This design provides a higher degree of security against lost or compromised keys. 🔑🗝🔐
<img width="800" alt="Funds-Structure" src="https://user-images.githubusercontent.com/62570164/219172174-8bb1834f-d6ae-432a-b5a9-1eeb7196c829.png">

An EOA directly controls an address and any funds associated to it because the external actor has direct ownership over the private key needed to sign and authorize transactions on the Ethereum network.

In certain cases, this is considered a single point of failure. Why? Well, the external actor's private key could become compromised by a hacker via phishing or physically stolen! Even as bad, the private key could be lost by the external actor, meaning the direct control over an address's balance no longer exists.
Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
