#!/bin/bash

# Bootstrap
BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

echo "=== Start installing k-zsh configuration ==="

echo "Step1: backing up current zsh config"
today=`date +%Y%m%d`
for i in $HOME/.zshrc ; do
    [ -e $i ] && [ ! -L $i ] && mv $i $i.$today ;
done
for i in $HOME/.zshrc ; do
    [ -L $i ] && unlink $i ;
done

echo "Step2: setting up symlinks"
ln -sif $CURRENT_DIR/zshrc $HOME/.zshrc

echo "=== Install Done! ==="
