#!/usr/bin/env bash
# shellcheck disable=SC1091

python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt
ansible-galaxy collection install -r requirements.yml
