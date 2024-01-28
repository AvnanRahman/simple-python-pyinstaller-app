cd /home/ubuntu/dicoding/deploy/simple-python-pyinstaller-app
git pull

python3 -m py_compile sources/add2vals.py sources/calc.py

python3 -m pytest --verbose --junit-xml test-reports/results.xml sources/test_calc.py

python3 -m PyInstaller --onefile sources/add2vals.py
