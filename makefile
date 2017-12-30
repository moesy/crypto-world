RIG_NAME=angelica
WALLET_ETHER=3c37055711e05f2dce2e8407bf35a99126c6a794

LOG_PATH=logs/`date "+%Y%m/%d/"`
mkdir -p $LOG_PATH
LOG_PATH+=`date "+%Y-%m-%d-%H-%M-%S"`.log

mine-cc:
  echo "coming soon"
  
mine-hush:
  echo "coming soon"
  
mine-eth:
  ethminer --farm-recheck 200 -G -S us2.ethpool.org:3333 -FS us1.ethpool.org:3333 -O $WALLET_ETHER.$RIG_NAME 
