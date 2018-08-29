# 07th-Mod Wiki

This wiki was created to substitute our current wiki at 
[guide/wiki](https://github.com/07th-mod/guide/wiki). It uses mkdocs to build and serve the files, this is 
the source needed to test, edit and compile the wiki.

## Dependencies
* Python 2.7 or 3.4 and above
* [mkdocs](https://www.mkdocs.org/)
* [mkdocs-material](https://github.com/squidfunk/mkdocs-material)

## How to install

> **We recommend reading the mkdocs documentation before doing anything.** [**Click 
here**](https://www.mkdocs.org/) to a more 
in-depth 
explanation on how to use it.

1. Clone this repository
2. ``cd`` inside the repo
3. run ``mkdocs serve`` to create a test environment at ``http://127.0.0.1:8000/``
4. if you are satisfied with your changes, run ``mkdocs build`` to convert the repository into a working 
website

## How to translate the wiki

1. Fork the repository
2. Translate all the files and edit ``mkdocs.yml`` with your changes.
3. **Do not send a pull request with translations!** We recommend letting us know of your fork, we will 
build from the source and add it to our wiki.
