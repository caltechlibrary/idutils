#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2015-2020 CERN.
# SPDX-FileCopyrightText: 2022 Graz University of Technology.
# SPDX-License-Identifier: BSD-3-Clause
#
# In applying this license, CERN does not waive the privileges and immunities
# granted to it by virtue of its status as an Intergovernmental Organization
# or submit itself to any jurisdiction.

# Quit on errors
set -o errexit

# Quit on unbound symbols
set -o nounset

zensical build --strict

python -m pytest
