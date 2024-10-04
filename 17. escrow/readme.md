# Escrow contract

There are 4 actions available to interact with this smart contract:

- initiate escrow and deposit assets
- deposit assets
- complete escrow
- cancel escrow

To initialize the escrow, we need to initialize a provider, MeshTxBuilder and MeshEscrowContract.

```
import { BlockfrostProvider, MeshTxBuilder } from '@meshsdk/core';
import { MeshEscrowContract } from '@meshsdk/contracts';
import { useWallet } from '@meshsdk/react';

const { connected, wallet } = useWallet();

const blockchainProvider = new BlockfrostProvider(APIKEY);

const meshTxBuilder = new MeshTxBuilder({
  fetcher: blockchainProvider,
  submitter: blockchainProvider,
});

const contract = new MeshEscrowContract({
  mesh: meshTxBuilder,
  fetcher: blockchainProvider,
  wallet: wallet,
  networkId: 0,
});
```