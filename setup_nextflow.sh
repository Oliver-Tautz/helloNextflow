#!/bin/bash -
#===============================================================================
#
#          FILE: setup_nextflow.sh
#
#         USAGE: ./setup_nextflow.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/24/2021 11:45:59 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
curl -s https://get.nextflow.io | bash
