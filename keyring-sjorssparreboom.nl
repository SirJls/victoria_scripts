#!/usr/bin/env python
import keyring

print(keyring.get_password("sjorssparreboom", "mail"))
