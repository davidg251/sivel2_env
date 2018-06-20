. ./config.sh #include the config file

if [ ! -d $DIRECTORY_BACKEND ];
then
  mkdir $DIRECTORY_BACKEND && cd $DIRECTORY_BACKEND
  git clone $BACKEND_REPO .
  git checkout docker_env
  cd ..
  mkdir $DIRECTORY_BACKEND && cd $DIRECTORY_FRONTEND
  git clone $FRONTEND_REPO .
  cd ..
  docker-compose up
else
  echo $DIRECTORY_BACKEND
  #docker-compose up
fi
