#!/bin/sh

function update()
{
    mkdir -p ~/.codeintel
    mkdir -p ~/.gradle
    rsync --exclude ".git" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -avh . ~;
}

echo "Overwrite existing files? (y/n)"
read confirm
if [[ $confirm =~ ^[Yy]$ ]]; then
    update;
fi;
