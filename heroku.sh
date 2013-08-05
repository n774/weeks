#!/bin/bash
echo TRAVIS_BRANCH=${TRAVIS_BRANCH}

case ${TRAVIS_BRANCH} in
    master)
  echo "it's Master!"
    wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
  git remote add heroku git@heroku.com:weekly-reporting-system.git
  echo "Host heroku.com" >> ~/.ssh/config
  echo "   StrictHostKeyChecking no" >> ~/.ssh/config
  echo "   CheckHostIP no" >> ~/.ssh/config
  echo "   UserKnownHostsFile=/dev/null" >> ~/.ssh/config
  heroku keys:clear
  yes | heroku keys:add
  yes | git push -f heroku master
  heroku pg:reset DATABASE --confirm weekly-reporting-system
  heroku run rake db:migrate
  heroku run rake assets:precompile
  heroku run rake db:seed
  heroku restart  
  ;;
    *)
  echo "it's Other."
  exit 0
  ;;
esac
