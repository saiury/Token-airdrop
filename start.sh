#!/usr/bin/env bash
pm2 stop all
pm2 start ganache-cli -- --mnemonic speed figure hip render riot tortoise door expire fall foil flock claim
truffle migrate --reset
