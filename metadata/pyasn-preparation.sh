#!/bin/bash

# NOTE: this script does not have to be run, since resulting .dat file is already in `metadata` directory
# (only added here for completeness)

# Download RIB
wget http://archive.routeviews.org/route-views.amsix/bgpdata/2019.07/RIBS/rib.20190701.0000.bz2

# Convert to ipasn-07-2019.dat for later import via pyasn; requires pyasn (pip install pyasn)
pyasn_util_convert.py --single rib.20190701.0000.bz2 ipasn-07-2019.dat
