#!/bin/bash
# Bash Script
# Author: Hung Dinh
# Email: dinhhung@gmail.com
# hs <action> <folder> -ex

dir=$(pwd)
# Cloud IP
CIP="128.199.204.48"
# Samba username in Cloud server
CUSER="dinhhung"
# Sync from local to Cloud
if [[ $1 == "push"  ]]; then
  current_dir=${PWD##*/}
  echo "===== Sync from $dir to CloudDrivers/$current_dir"
  DES="$CUSER@$CIP:/home/dinhhung/shared/works"
  SOU=$dir/$2
# Sync from Cloud to local
elif [[ $1 == "pull" ]]; then
  echo "===== Sync from Cloud Driver/$2 to $dir/$2"
  DES=$dir
  SOU="$CUSER@$CIP:/home/dinhhung/shared/works"
fi

# Check flags
for i in "$@"
do
case $i in
  -ex|--exclude)
    EX="--exclude-from=$(pwd)/.exclude"
  shift # past argument=value
  ;;
esac
done
# run rsync 
rsync -azP $EX  $SOU $DES --delete

