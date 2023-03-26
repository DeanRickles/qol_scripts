#!/bin/bash
###################################################################################################
#   installs python3
####################################################################################################
# update repository.
apt update -y
# install git, not needed for python. personal preference.
# Download python3 packages needed.
apt install python3 pip python3.10-venv git -y

# TODO: currently python3 doesn't add as a script for python.
alias python=python3