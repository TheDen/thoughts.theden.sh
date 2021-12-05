#!/bin/bash

git push origin $(git subtree split --prefix public main):gh-pages --force
