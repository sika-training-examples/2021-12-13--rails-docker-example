#!/bin/bash

bin/rake db:migrate

exec rails server -b 0.0.0.0
