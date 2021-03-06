# abort on errors
set -e
​
# build
npm run docs:build
​
# navigate into the build output directory
cd docs/.vuepress/dist
​
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
​
git init
git add -A
git commit -m 'deploy'
​
git push -f https://${access_token}@github.com:MUNPEDIA/MUNPEDIA.github.io.git master

​​
cd -