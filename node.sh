#!/bin/bash

POOL=149.50.222.86:443
WALLET=karlsen:qr8cynv2mfke66huxyutka06977z6e84dfvqhcmw2s03w5zzgp6t7m6exjq4t

./alat --algo KARLSEN --pool $POOL --user $WALLET $@ --no-cl
