#!/bin/bash
if [[ -f .enforcer.cid ]]; then
  TARGET=$(cat .enforcer.cid)
  set -ux
  docker kill $TARGET &>/dev/null
  docker rm $TARGET &>/dev/null
  rm .enforcer.cid &>/dev/null
fi
