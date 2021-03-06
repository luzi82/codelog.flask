#!/bin/bash -e

. _env.sh

# clean up
cd ${PROJECT_ROOT_PATH}
rm -rf ${PROJECT_ROOT_PATH}/dev_env

# init folder
cd ${PROJECT_ROOT_PATH}
mkdir -p ${PROJECT_ROOT_PATH}/dev_env

# init local run env
cd ${PROJECT_ROOT_PATH}
python3 -m venv ${PROJECT_ROOT_PATH}/dev_env/venv
. ${PROJECT_ROOT_PATH}/dev_env/venv/bin/activate
pip install --upgrade pip wheel
pip install -r ${PROJECT_ROOT_PATH}/src/requirements.txt
pip install pytest
