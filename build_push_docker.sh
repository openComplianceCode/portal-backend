#!/usr/bin/env bash

SHA=$(git rev-parse main) #todo there is a potential bug for 2 $SHA

ImageExist=$(docker manifest inspect aleczheng/license-back:$SHA > /dev/null;echo $?)
if [[ $ImageExist != '0' ]]; then
  echo 'buiding license-back'
  echo 'tag:'$SHA
  docker build -t aleczheng/license-back -t "aleczheng/license-back:$SHA" -f ./Dockerfile .
  docker push aleczheng/license-back:latest 
  docker push "aleczheng/license-back:$SHA"
fi
exit 0


