. ./config.sh #include the config file

if $RUNNED;
then
  mkdir sivel && cd sivel
  git clone $FRONTEND_REPO
  cd ..
  mkdir sivel && cd sivel
  git clone $BACKEND_REPO
  sed 's/true/false/' config.sh > config.sh
  docker-compose up
else
  docker-compose up
fi
