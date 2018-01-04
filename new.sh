docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 127.0.0.1:80:80 jekyll/minimal:3.6 jekyll new site
