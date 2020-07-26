cd ..
start mkdocs serve -f mkdocs.yml
timeout 4
explorer http://127.0.0.1:8000
pause