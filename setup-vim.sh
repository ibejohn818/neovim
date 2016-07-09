#!/usr/bin/env bash

# check if the .vim link exists 
if [ !-L $HOME/.vim] then
	ln -s $HOME;
fi
