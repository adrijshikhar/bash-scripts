#!/bin/bash
#requires jq -> http://stedolan.github.io/jq/

user="" #enter your username here
token="" #enter your user token from github
organization="" #enter organization name

repo_list=$(curl https://api.github.com/orgs/$organization/repos?type=private\&per_page=1000 -u ${user}:${token}  | jq .[].ssh_url | sed -e 's/^"//'  -e 's/"$//')

for repo in $repo_list
do

  dirgit=${repo#*/}
  dir=${dirgit%.*}
  cd $dir
  echo "Repo : $dir"
  git pull
  cd ..
done
