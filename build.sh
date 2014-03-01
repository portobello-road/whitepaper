#!/bin/sh

bundle exec rake

if [ -f ./portobello_road.log ]; then
  cat ./portobello_road.log
  exit 1
fi

exit 0
