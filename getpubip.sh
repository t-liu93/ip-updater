#!/bin/bash

# Get real public ip from opendns
dig +short myip.opendns.com @resolver1.opendns.com
