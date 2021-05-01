echo deploying contact_sites to pip...
echo bumping version
bumpversion --current-version
echo build dist
python setup.py sdist bdist_wheel
echo uploading to pip
twine upload dist/*