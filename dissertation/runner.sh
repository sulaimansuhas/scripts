#!/bin/bash
cd /users/suhassn/
mkdir "$1"bytes-test
cd "$1"bytes-test
sudo ethtool -C enp6s0f0 rx-usecs 0
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t1 -c1 -n10
sudo ethtool -C enp6s0f0 rx-usecs 1
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t10 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t25 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t50 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t75 -c10 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t100 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t125 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t150 -c100 -n10
