<img src="https://camo.githubusercontent.com/9ac4a1f7f5ea0f573451b5ddc06e29c8aa113a85/68747470733a2f2f692e696d6775722e636f6d2f6948326a6468562e706e67" align="right">

IG Scraper
=================

Usage as library
----------------
```python
from pprint import pprint
import instagram_scraper

args = {"login_user": "LOGIN", "login_pass": "PASSWORD"}

insta_scraper = instagram_scraper.InstagramScraper(**args)
insta_scraper.authenticate_with_login()
shared_data = insta_scraper.get_shared_data_userinfo(username='SCRAPED_USERNAME')

arr = []

for item in insta_scraper.query_media_gen(shared_data):
    arr.append(item)

pprint(arr)
```

Docker
-------
How to install Docker see https://docs.docker.com/engine/install/.

Don't forget to run postinstall steps for Linux https://docs.docker.com/engine/install/linux-postinstall/.

#### Build
```bash
$ docker build -t ig-scraper .
```
#### Run
```bash
$ docker run -it --rm -v $(pwd)/data:/ig-scraper/data ig-scraper -i -d data/<folder_name> <params>
```
If you want to save `cookiejar` to you HDD you have to run it like this:
```bash
$ docker run -it --rm -v $(pwd)/data:/ig-scraper/data ig-scraper -i -d data/<folder_name> --cookiejar data/my_cookies <params>
```

#### Run built image
You could run already built image from here https://github.com/arc298/ig-scraper/pkgs/container/ig-scraper/versions
```bash
$ docker run -it --rm -v $(pwd)/data:/ig-scraper/data ghcr.io/arc298/ig-scraper:latest -i -d data/<folder_name> --cookiejar data/my_cookies <params>
```

Develop
-------

Clone the repo and create a virtualenv 
```bash
$ virtualenv venv
$ source venv/bin/activate
$ python setup.py develop
```

Running Tests
-------------

```bash
$ python setup.py test

# or just 

$ nosetests
```

Contributing
------------

1. Check the open issues or open a new issue to start a discussion around
   your feature idea or the bug you found
