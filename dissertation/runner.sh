#!/bin/bash
cd /users/suhassn/
rm -rf "$1"bytes-test
mkdir "$1"bytes-test
cd "$1"bytes-test
sudo ethtool -C enp6s0f0 rx-usecs 0
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t1 -c1 -n10
sudo ethtool -C enp6s0f0 rx-usecs 1
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c25 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c50 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c75 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c100 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c125 -n10
/users/suhassn/scripts/dissertation/experiments.sh -d3s -t4 -c150 -n10
