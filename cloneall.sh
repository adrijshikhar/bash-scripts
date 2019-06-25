#!/bin/bash
#requires jq -> http://stedolan.github.io/jq/

user="" #enter your username here
token="" #enter your user token from github
organization="" #enter organization name


repo_list=$(curl https://api.github.com/orgs/$organization/repos?type=private\&per_page=200 -u ${user}:${token}  | jq .[].ssh_url | sed -e 's/^"//'  -e 's/"$//')

for repo in $repo_list
do
  echo "Repo found: $repo"
  git clone $repo
done
