#!/bin/bash

datum1=$(date -d "2017/07/02" "+%s")
datum2=$(date "+%s")

diff=$datum2-$datum1

days=$((diff/(60*60*24)))

echo $days
