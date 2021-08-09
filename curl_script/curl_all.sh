#!/bin/bash

URL=https://www.google.co.jp
N=2
# ref: https://curl.se/docs/manpage.html#-w
curl_all_write_out() {
    curl  ${URL} -o /dev/null -s -w @- << EOF
remote_ip: %{remote_ip},
http_code: %{http_code},
size_download: %{size_download},
size_download: %{size_upload},
speed_download: %{speed_download},
speed_upload: %{speed_upload},
time_namelookup: %{time_namelookup},
time_connect: %{time_connect},
time_appconnect: %{time_appconnect},
time_pretransfer: %{time_pretransfer},
time_starttransfer: %{time_starttransfer},
time_total: %{time_total}\n
EOF
}

for i in $(seq ${N}); do
    sleep 1
    curl_all_write_out
done
