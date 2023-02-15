# MULTI-SIGNATURE-WALLET
Multi-signature smart-contract 
A multi-signature contract acts as a "wallet" as it can hold and transfer funds.
It is called "multi-sig" because it typically needs greater than one signatures to approve any wallet activity such as transferring funds out. 
Since multi-sigs are powered by multiple keys, they avoid a single point of failure, which makes it significantly harder for funds to be compromised.
⛓ This design provides a higher degree of security against lost or compromised keys. 🔑🗝🔐


An EOA directly controls an address and any funds associated to it because the external actor has direct ownership over the private key needed to sign and authorize transactions on the Ethereum network.

In certain cases, this is considered a single point of failure. Why? Well, the external actor's private key could become compromised by a hacker via phishing or physically stolen! Even as bad, the private key could be lost by the external actor, meaning the direct control over an address's balance no longer exists.
