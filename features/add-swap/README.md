# Add Swap

## Why?

Some mods require a bit more memory and as the K2 Plus is limited to 488MB of memory without any swap.

When the memory is full the system sometimes kills the master-server process which makes your printer just stop and put out error **TE2564**.

This script will add 256MB of SWAP to ease the printer into some higher memory jobs.

## What to expect
Less memory related crashes that make it seem like it's the printers hardware, but it's actually the software when you look at `dmesg`.

**Warning: Creating swap takes quite a while as the K2 Plus doesn't have very powerful hardware. Please be patient, it is running!**
