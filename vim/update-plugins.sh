#!/bin/bash

cd `git rev-parse --show-toplevel`
git submodule foreach git pull origin master
