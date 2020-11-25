#!/bin/bash

# Copy general git config
cp -i files/gitignore_global "$HOME/projects/test/.gitignore_global"
cp -i files/gitconfig "$HOME/projects/test/.gitconfig"

# Create project directories with empty .gitconfig
ProjectDirs=('home' 'oss' 'rubycrutch' 'work')

for dir in "${ProjectDirs[@]}"; do
  dir_path="$HOME/projects/test/$dir"
  mkdir -p $dir_path
  touch "$dir_path/.gitconfig"
done
