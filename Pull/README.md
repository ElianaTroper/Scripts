# Get

This folder contains scripts for getting public data.

See todo.md for general todos. Data-specific todos are included in the corresponding section below.

## Chains

Blockchains, if it wasn't clear.

**Live**:

- Ethereum

**Approved**:

- Monero

**Unevaluated**:

- Optimism (Ethereum L2)

**Denied**:

- ZCash: ZCash functions similarly to Monero; it was built/deployed in a less open way.
- Bitcoin: Ethereum or Monero technically domininate Bitcoin; thus we will not include Bitcoin.

To be considered for inclusion, a chain must have technical functionality  that strictly dominates other chains; if a chain meets that criteria, we will evaluate it further subjectively.

### Ethereum

Acquired via using git to download geth, then using geth to sync.

**Support:** TODO

#### TODO

- Move back to Ethereum folder instead of Eth

## Gutenberg

Acquired via rsync. `aleph.gutenberg.org` is up to date and works well.

**Support:** `https://www.gutenberg.org/help/mirroring.html`

### TODO

- Write parsing program

## Wikipeda

WIP. 

**Support:** `https://en.wikipedia.org/wiki/Wikipedia:Database_download`

### TODO

- Write parsing program
- Learn about current search implementations of other offline readers
