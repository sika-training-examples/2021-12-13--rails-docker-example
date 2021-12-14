#!/bin/bash

bin/rake db:migrate

rm -rf tmp/pids/server.pid
exec rails server -b 0.0.0.0
