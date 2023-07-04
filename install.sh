#!/bin/bash
##################################################################################
# v0.1
# created by K0K0$H@
# purpose: add .xml color themes in current dir to gedit
# Github repo: https://github.com/K0K0SHA/gedit-themes/
# repo cloned from: https://github.com/mig/gedit-themes/
# this install.sh works with both repos above
# run from directory with styles.xml
# be sure to check readme

styles_dir="$HOME/.local/share/gedit/styles"

if [ ! -d "$styles_dir" ]; then
  echo "The directory $styles_dir does not exist."
  echo "Check gedit config file, as you may need to edit it"
  # TODO attempt gedit config edit if user wants
  exit 1
fi

# ensure there is at least one theme in current directory
shopt -s nullglob

xml_files=(*.xml)

if [ ${#xml_files[@]} -eq 0 ]; then
  echo "No XML files found in the current directory."
  echo "Ensure you are in the correct directory with style xml files."
  exit 1
fi

# functional one liner (most important line of code)
# copies themes
cp ./*.xml $styles_dir

echo "Themes copied to $styles_dir"
echo "Contents of $styles_dir (user-installed themes):"
ls $styles_dir
