#!/usr/bin/env bash
# shellcheck disable=SC1091

# Create python virtual environment
python3 -m venv venv

# Activate python virtual environment
source venv/bin/activate

# Install latest PIP module
python3 -m pip install --upgrade pip

# Install Ansible and any other Python modules required
python3 -m pip install -r requirements.txt

# Install Ansible collections required
ansible-galaxy collection install -r requirements.yml
