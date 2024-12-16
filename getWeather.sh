#!/bin/bash

location=$(curl "https://ipinfo.io/json" | jq -r '.loc')
lat=$(echo "$location" | cut -d ',' -f 1)
lon=$(echo "$location" | cut -d ',' -f 2)

API_KEY="your_api_key_here"

curl "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=${API_KEY}&units=metric" | jq
