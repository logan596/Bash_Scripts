#!/bin/bash

OF=/home/jenkins-$(date +%Y%m%d).tgz
tar -cZf $OF /home/jenkins/
