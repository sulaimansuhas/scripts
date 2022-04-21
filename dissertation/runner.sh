#!/bin/bash
cd /users/suhassn/
mkdir "$1"bytes-test
cd "$1"bytes-test

/users/suhassn/scripts/dissertation/experiments.sh -d3s -t1 -c1 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t1 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t2 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t5 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t8 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t10 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t1 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t2 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t5 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t8 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t10 -c100 -n10
