#!/bin/sh

python3.6 -m pip uninstall psycopg2
python3.6 -m pip install --no-binary :all: psycopg2
/usr/local/bin/python -m pip install --upgrade pip
pip install bottle==0.12.13 redis==2.10.5

python -u sender.py
