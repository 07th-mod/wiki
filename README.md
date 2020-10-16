# 07th-Mod Wiki

This wiki was created to substitute the old Github wiki. It uses mkdocs to build and serve the files.
This repository contains the source needed to test, edit and compile the wiki.

The compiled wiki is hosted on our website, at http://07th-mod.com/wiki/ . The website will periodically
update according to the changes made in this repository (it may be some time before the changes are seen - try refreshing your browser).

**Note**: there are some handy scripts for installation and running the server in the  folder.

## Dependencies
* Python 2.7 or 3.4 and above
* [mkdocs](https://www.mkdocs.org/)
* [mkdocs-material](https://github.com/squidfunk/mkdocs-material)
* [mkdocs-minify-plugin](https://github.com/byrnereese/mkdocs-minify-plugin)

## How to install the wiki editing environment

Firstly, please clone this repository so you have all the files needed to edit the wiki.

### 1. Installing Python

You must install Python and pip (the python package manager) manually on your system.

* On Windows, download the Python installer from the Python website, which will install both `python` and `pip`
* On Linux, use your native package manager to install Python and pip (they are separate packages)
* On Mac, run `sudo easy_install pip` to install pip (assuming you're using Mac's built-in python distribution).

### 2 Install mkdocs

You must install mkdocs, a python tool which compiles the markdown files into the wiki. mkdocs comes with a built in server which gives you a live preview of your changes as you edit the markdown files. This makes editing easier and less error prone.

#### 2a. Install mkdocs automatically

Inside the `dev_scripts` folder of this repository, run the following scripts to install mkdocs automatically. You must already have Python and pip installed.

* `dev_scripts\install_mkdocs_and_plugins.bat` on Windows
* `dev_scripts\install_mkdocs_and_plugins` on Linux

If this does not work, you can follow the instructions below to install mkdocs manually.

#### 2b. Install mkdocs manually

Install mkdocs and its plugins as below:

* Install `mkdocs` with `pip install mkdocs`
* Install `mkdocs-material` with `pip install mkdocs-material`
* Install `mkdocs-minify-plugin` with `pip install mkdocs-minify-plugin`
* Install `pymdown-extensions` (might be already installed)

## Making and testing changes to the wiki

> **We recommend reading the mkdocs documentation before doing anything.** [**Click 
here**](https://www.mkdocs.org/) to a more 
in-depth 
explanation on how to use it.

1. ``cd`` inside the repo (where `mkdocs.yml` is)
2. Run ``mkdocs serve`` to create a test environment at ``http://127.0.0.1:8000/`` . Since you will be doing this often, we have added `serve_website.bat` and `serve_website` (a shell script) which runs this command.
3. If you are satisfied with your changes, push the changes to github.
    - The server will automatically recompile the wiki and make it live at http://07th-mod.com/wiki/
    - You may need to **refresh the website in your browser** to see the changes (just typing in the website may fetch a cached copy!)
4. If you need a local-only HTML version of the website run ``mkdocs build`` to convert the repository into a working website

## How to translate the wiki

1. Fork the repository
2. Translate all the files and edit ``mkdocs.yml`` with your changes.
3. **Do not send a pull request with translations!** We recommend letting us know of your fork, we will 
build from the source and add it to our wiki.

## Useful Information about the wiki

### Using Markdown Extensions

The markdown extensions are configured in the `mkdocs.yml` file.
Extensions starting with `pymdownx` are part of the PyMdown Extensions
package. [Click here](https://facelessuser.github.io/pymdown-extensions/extensions/arithmatex/)
to see the full list of extensions. Note that each individual extension must
be enabled in the `mkdocs.yml` file before it can be used.

#### Using the Pymdownx Snippets extension

The [pymdownx.snippets](https://facelessuser.github.io/pymdown-extensions/extensions/snippets/) extension is setup to serve the files in the `snippets` folder.

You can use the following syntax to include a file called `Cross-Platform-Installer.md`
located in the snippets folder:

`--8<-- "Cross-Platform-Installer.md"`

If the file can't be found, the page won't be displayed and an error will be printed on the console.

### Wiki / Repository folder structure

* `dev_scripts` - handy dev scripts for installing and running mkdocs
* `docs` - this is the root folder of the wiki, but please note that the `mkdocs.yml` file IS used by mkdocs, even though it is outside the `docs` folder.
* `mkdocs.yml` - contains the menu of the wiki, and tells mkdocs which plugins to use and other meta information
* `docs\Higurashi` and `docs\Umineko` - files for the Higurashi and Umineko sections of the wiki
* `docs\Snippets` - these contain snippets of markdown which are inserted into certain pages of the wiki (see below for more info)

### Images

Images are currently hosted on the 07th-mod website, and are manually uploaded to the server.
