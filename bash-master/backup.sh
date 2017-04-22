#!/bin/bash

OF=/home/jenkins-$(date +%Y%m%d).tgz
tar -cf $OF /home/jenkins/
