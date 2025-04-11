Documentation
=============

* Create a virtual environment::

    virtualenv -p python3.12 venv

* Source the virtual environment::

    source venv/bin/activate

* Install all required packages::

    pip install -r requirements.txt

* Build the documentation::

    make html

* Open the documentation::

     firefox build/html/index.html
