#!/bin/bash

export PS1="\[\033[33m\]\w\[\033[36m\]\$(__git_ps1)\[\033[0m\]\n$ "

alias status='git status --short'
