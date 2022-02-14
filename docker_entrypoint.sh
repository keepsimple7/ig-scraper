#!/bin/sh

echo -e "\e[5;33mWarning!!!\e[0m Instagram-scraper is relocating from Docker hub to Github packages."
echo "v1.10.5 is the last one in Docker hub. See new versions here: https://github.com/arc298/instagram-scraper/pkgs/container/instagram-scraper\n"
echo "Command for the latest image: docker pull ghcr.io/arc298/instagram-scraper:master"

echo
echo PARAMS: "$@"

instagram-scraper "$@"
