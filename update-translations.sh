#!/bin/sh
:'
This script allows you to extract properly marked strings from whatever you have specified in your 
babel.cfg file (in this case, .py and .html files) and add them to the translation registry.

It also compiles strings that are entered into the translation registry as translated text into the 
binary messages files that the application will present to end users, e.g., via their web browsers.

You will run this script any time you have added new text strings that need translation (be sure to
mark them appropriately!) and need to update the application to reflect them.

More information about internationalizing your application text strings is available in babel.cfg
'
source ./venv/bin/activate
pybabel extract -F application/babel.cfg -k lazy_gettext -o application/messages.pot ./application
pybabel update -i application/messages.pot -d application/translations
pybabel compile -d application/translations

echo "If you still need to translate strings, be sure to run this script again once you're done."