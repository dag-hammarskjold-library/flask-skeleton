This is a skeleton application for making a specific variety of blueprinted Flask apps.

This repository can get you started with:

* Continuous Integration with Travis CI
* Serverless deployment to AWS Lambda and API Gateway via Zappa
* Internationalization
* Modular Flask development

Current app structure:
```bash
.
├── README.md
├── application
│   ├── __init__.py
│   ├── babel.cfg
│   ├── config.py
│   ├── modules
│   │   ├── README.md
│   │   ├── __init__.py
│   │   ├── api
│   │   │   ├── README.md
│   │   │   ├── __init__.py
│   │   │   └── views.py
│   │   └── search
│   │       ├── README.md
│   │       ├── __init__.py
│   │       ├── templates
│   │       └── views.py
│   ├── static
│   │   ├── css
│   │   ├── fonts
│   │   ├── img
│   │   └── js
│   ├── templates
│   │   ├── base.html
│   │   └── index.html
│   ├── translations
│   ├── utils.py
│   └── views.py
├── init-translations.sh
├── requirements.txt
├── update-translations.sh
└── zappa_settings.json
```

The blueprint pieces are stored in the modules directory. Each blueprint is a sub-application, not capable of existing on its own, but modularized to encompass related functionality to ease development and debugging.

