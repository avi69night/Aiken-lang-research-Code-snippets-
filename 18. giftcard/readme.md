# Giftcard contract


- create giftcard
- redeem giftcard

To initialize the escrow, we need to initialize a provider, MeshTxBuilder and MeshGiftCardContract.

```
import { BlockfrostProvider, MeshTxBuilder } from '@meshsdk/core';
import { MeshGiftCardContract } from '@meshsdk/contracts';
import { useWallet } from '@meshsdk/react';

const { connected, wallet } = useWallet();

const blockchainProvider = new BlockfrostProvider(APIKEY);

const meshTxBuilder = new MeshTxBuilder({
  fetcher: blockchainProvider,
  submitter: blockchainProvider,
});

const contract = new MeshGiftCardContract({
  mesh: meshTxBuilder,
  fetcher: blockchainProvider,
  wallet: wallet,
  networkId: 0,
});
```