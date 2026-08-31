#!/bin/sh
set -ex
for v in `ls orig`
do
mkdir -p orig_encrypted/$v
gpg --batch --passphrase-file passphrase.txt -o orig_encrypted/$v/baserom.z64 --symmetric orig/$v/baserom.z64
done

# decrypt with:
# gpg --batch --passphrase passphrase -o output.z64 --decrypt orig_encrypted/VERSION/baserom.z64
