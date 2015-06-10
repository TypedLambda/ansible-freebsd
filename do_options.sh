#!/bin/bash
export DO_CLIENT_ID=<YOUR CLIENT ID>
export DO_API_KEY=<YOUR API KEY>
endpoints=(sizes regions images ssh_keys)
for i in "${endpoints[@]}"; do
  url=`printf "https://api.digitalocean.com/%s/?client_id=%s&api_key=%s" $i $DO_CLIENT_ID $DO_API_KEY`
  curl $url | python -mjson.tool
done
