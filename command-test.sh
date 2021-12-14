#!/bin/bash

bin/rake db:migrate

exec rails test
