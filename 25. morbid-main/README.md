# Davy Jones' Locker

> [!IMPORTANT]
> The offchain is likely to fail after Conway era (Chang hardfork).
> A fix will be delivered some time later after the storm subsides.
> Or probably a new and better front-end will be developed instead.

<br/><div align="center">
  >_Fifteen men on the dead man's chest—_<br/>
  >_...Yo-ho-ho, and a bottle of rum!_<br/>
  >_Drink and the devil had done for the rest—_<br/>
  >_...Yo-ho-ho, and a bottle of rum!_<br/>
</div><br/>

This is a dead-man's switch contract where you can:
- Create Chest
- Add Treasure
- Delay Unlock
- Unlock Chest
- Resend Chest

## Create Chest
Mints `ChestLock` and `ChestKey`(s), a new address will be generated. Send `ChestLock`
while depositing initial assets. Keep `ChestKey` token(s) in your wallet, you will need
to show it when `DelayUnlock`.

Give access for delaying the chest unlocking deadline to anyone by sending them the
`ChestKey` token.

## Add Treasure
Anyone can deposit more assets to the chest. Don't forget to include an arbitrary inline
datum to be redeemable.

## Delay Unlock
Show the matching `ChestKey` token to postpone the chest unlocking deadline.

## Unlock Chest
Redeem all assets from the chest when the deadline has passed. You will also receive the
`ChestLock` NFT.

## Resend Chest
Resend `ChestLock` to the chest address. Similar to `CreateChest` but it is done by
the chest unlocker. There is no real benefit to do this, but it's possible.

---

