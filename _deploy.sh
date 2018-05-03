#!/bin/sh

set -e

[ -z "${GITHUB_TOKEN}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

git config --global user.email "lluis.revilla@gmail.com"
git config --global user.name "Lluís Revilla"

git clone -b gh-pages https://${GITHUB_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git book-output
cd book-output
cp -r ../_book/* ./
git add --all *
git commit -m "Update the webpage" || true
git push -q origin gh-pages
