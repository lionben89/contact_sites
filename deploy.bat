echo deploying contact_sites to pip...
set /p category=Enter bump category patch, minor or major: 
echo bumping version 
python ./setup.py --version > ./version_temp.txt
set /p version=<./version_temp.txt
del ./version_temp.txt
bumpversion --current-version %version% %category%
echo build dist
python setup.py sdist bdist_wheel
echo uploading to pip
twine upload dist/*