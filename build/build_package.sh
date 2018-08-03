#!/bin/sh

dir=$(pwd -P)

cd ../
echo "----------------------- Test -----------------------"
python setup.py test
echo "----------------------- Build -----------------------"
python setup.py sdist
echo "----------------------- Upload -----------------------"
twine upload dist/*
echo "----------------------- Clean Up -----------------------"
rm -rf dist
rm -rf ncep_client.egg-info/
cd $dir
