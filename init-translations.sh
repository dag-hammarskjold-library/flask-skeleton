#!/bin/sh
:'
This script initializes your translations. You should only need to run it once. 
Make sure you have all of youre requirements installed, then run this script.

The script assumes your application is in ./application but if you decide to 
change the directory name (i.e., rename your application), you should replace 
all instances of application below with the new name.

Additionally, this script will generate translation files for each language 
you specify. If you want more, fewer, or different languages than the ones 
included here, you will need to alter the script to reflect the languages you 
need.
'
source ./venv/bin/activate
pybabel extract -F application/babel.cfg -o application/messages.pot ./application
pybabel init -i application/messages.pot -d application/translations -l ar
pybabel init -i application/messages.pot -d application/translations -l zh
pybabel init -i application/messages.pot -d application/translations -l en
pybabel init -i application/messages.pot -d application/translations -l fr
pybabel init -i application/messages.pot -d application/translations -l ru
pybabel init -i application/messages.pot -d application/translations -l es