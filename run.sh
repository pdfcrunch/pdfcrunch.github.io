#!/usr/bin/env bash

sudo rm -rf _site
docker run --rm -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve
