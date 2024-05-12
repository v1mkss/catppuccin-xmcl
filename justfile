#!/bin/sh
_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers xmcl.tera
  cd themes/ || exit
  for filename in *.json; do
    rename -a "${filename%.*}" "theme" *.json
    zip "${filename%.*}.xtheme" "theme.json"
    rm "$filename"
    rm "theme.json"
  done