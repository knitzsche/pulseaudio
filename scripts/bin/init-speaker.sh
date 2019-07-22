#!/bin/bash

#
# Copyright (C) 2016 Canonical Ltd
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# initialise speaker
# we have two option, reail and factory mode

if [ "true" == "$(snapctl get factory-mode)" ]; then
  ${SNAP}/bin/amp_cfg_TAS5825M_bypass_LR.sh
else
  ${SNAP}/bin/amp_cfg_TAS5825M_tune_2LR_v7.sh
fi
