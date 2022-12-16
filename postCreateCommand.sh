#!/bin/bash

# add any commands you want to run after the container is created here
# for example you may wish to install your python packages here

echo "executing post Create Commands ..."

# e.g.
# pip install --config-settings editable_mode=compat -e ophyd[dev] -e ophyd-epics-devices[dev]
