#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn run build

# navigate into the build output directory
cd dist

echo 'coderik.nl' > CNAME

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:ErikvdVen/portfolio.git master:gh-pages
cd -