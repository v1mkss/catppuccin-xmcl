_default:
  @just --list

build:
  #!/usr/bin/env bash
  whiskers xmcl.tera
  cd themes/
  for filename in *.json; do
    zip "${filename%.*}.xtheme" "$filename"
    rm "$filename"
  done
