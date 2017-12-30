RIG_NAME=angelica
WALLET_ETHER=3c37055711e05f2dce2e8407bf35a99126c6a794

LOG_PATH=`date "+%Y%m/%d/"`
LOG_PATH+=`date "+%Y-%m-%d-%H-%M-%S"`.log
mkdir -p $LOG_PATH

mine-trezarcoin:
  LOG_PATH=trezarcoin/$LOG_PATH
  echo "coming soon"
  
mine-hush:
  LOG_PATH=hush/$LOG_PATH
  echo "coming soon"
  
mine-ethereum:
  LOG_PATH=ethereum/$LOG_PATH
  
  ethminer --farm-recheck 200 -G -S us2.ethpool.org:3333 -FS us1.ethpool.org:3333 -O $WALLET_ETHER.$RIG_NAME > $LOG_PATH
