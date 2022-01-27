# UB-Firewall

This script was developed for using during the UB competition (2022). The script writes basic firewall rules to allow certain ports to different machines while blocking the rest.

# How to use:
1. Curl the script onto your FreeBSD router(pfSense, opnSense, etc.)
2. Run the script in your /etc/ directory. This will generate a "pf.conf" file.
```
/bin/sh firewall.sh
```
3. Type the following command to use the new configuration file we just made.
```
pfctl -f pf.conf
```
To view the verbose mode for this:
```
pfctl -vf pf.conf
```
4. Ensure your packet filter is enabled by typing the following command:
```
pfctl -e
```