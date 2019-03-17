# 07th-Mod Wiki

This wiki was created to substitute the old Github wiki. It uses mkdocs to build and serve the files.
This repository contains the source needed to test, edit and compile the wiki.

The compiled wiki is hosted on our website, at http://07th-mod.com/wiki/ . The website will periodically
update according to the changes made in this repository (it may be some time before the changes are seen - try refreshing your browser).

**Note**: there are some handy scripts for installation and running the server in the `dev_scripts` folder.

## Dependencies
* Python 2.7 or 3.4 and above
* [mkdocs](https://www.mkdocs.org/)
* [mkdocs-material](https://github.com/squidfunk/mkdocs-material)
* [mkdocs-minify-plugin](https://github.com/byrnereese/mkdocs-minify-plugin)

## How to install

### Installing Python and mkdocs

1. Install Python and pip (the python package manager) on your system.
    - On Windows, download the Python installer from the Python website, which will install python and pip
    - On Linux, use your native package manager to install Python and pip (they are separate packages)
    - On Mac, run `sudo easy_install pip` to install pip (assuming you're using Mac's built-in python distribution).
2. Install mkdocs and its plugins as below, or alternatively run the install_mkdocs_and_plugins script
    - Install `mkdocs` with `pip install mkdocs`
    - Install `mkdocs-material` with `pip install mkdocs-material`
    - Install `mkdocs-minify-plugin` with `pip install mkdocs-minify-plugin`
    - Install `pymdown-extensions` (might be already installed)

### Preparing the repository

> **We recommend reading the mkdocs documentation before doing anything.** [**Click 
here**](https://www.mkdocs.org/) to a more 
in-depth 
explanation on how to use it.

1. Clone this repository
2. ``cd`` inside the repo (where `mkdocs.yml` is)
3. Run ``mkdocs serve`` to create a test environment at ``http://127.0.0.1:8000/`` . Since you will be doing this often, we have added `serve_website.bat` and `serve_website` (a shell script) which runs this command.
4. If you are satisfied with your changes, push the changes to github.
    - The server will automatically recompile the wiki and make it live at http://07th-mod.com/wiki/
    - You may need to **refresh the website in your browser** to see the changes (just typing in the website may fetch a cached copy!)
5. If you need a local-only HTML version of the website run ``mkdocs build`` to convert the repository into a working website

## How to translate the wiki

1. Fork the repository
2. Translate all the files and edit ``mkdocs.yml`` with your changes.
3. **Do not send a pull request with translations!** We recommend letting us know of your fork, we will 
build from the source and add it to our wiki.

## Using Markdown Extensions

The markdown extensions are configured in the `mkdocs.yml` file.
Extensions starting with `pymdownx` are part of the PyMdown Extensions
package. [Click here](https://facelessuser.github.io/pymdown-extensions/extensions/arithmatex/)
to see the full list of extensions. Note that each individual extension must
be enabled in the `mkdcos.yml` file before it can be used.

### Using the Pymdownx Snippets extension

The [pymdownx.snippets](https://facelessuser.github.io/pymdown-extensions/extensions/snippets/) extension is setup to serve the files in the `snippets` folder.

You can use the following syntax to include a file called `Cross-Platform-Installer.md`
located in the snippets folder:

`--8<-- "Cross-Platform-Installer.md"`

If the file can't be found, the page won't be displayed and an error will be printed on the console.