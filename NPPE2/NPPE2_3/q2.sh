#!/bin/bash

#Write a Bash command to print the number of failed login attempts which are recorded in the file myauth.log located in the current working directory.

#Contents of myauth.log is given below


grep "FAILED LOGIN" myauth.log | wc -l