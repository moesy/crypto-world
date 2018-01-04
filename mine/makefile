#!/bin/sh

export RIG_NAME=angelica
export WALLET_ETHER=3c37055711e05f2dce2e8407bf35a99126c6a794
export WALLET_HUSH=t1VQ8PCt6YPq9qeJXDqFUKQdNTKK8DfgLCU

LOG_PATH=/opt/crypto-world/logs/
LOG_FILE=`date "+%Y-%m-%d-%H-%M-%S"`.log

mine-trezarcoin:
	LOG_PATH=logs/trezarcoin/$LOG_PATH

mine-hush:
	mkdir -p ${LOG_PATH}hush/
	/opt/crypto-world/bin/miner --server us.hushmine.pro --user ${WALLET_HUSH}.${RIG_NAME} --pass x --port 9009 --log 2 --logfile ${LOG_PATH}hush/hush_${RIG_NAME}_ewbf.log --tempunits 80

mine-ethereum:
	ethminer --farm-recheck 200 -G -S us2.ethpool.org:3333 -FS us1.ethpool.org:3333 -O $${WALLET_HUSH}.${RIG_NAME}
