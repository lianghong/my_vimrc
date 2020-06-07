#!/bin/bash


vim -c 'CocInstall -sync coc-json coc-html|q'
vim -c 'CocInstall -sync coc-python|q'
vim -c 'CocInstall -sync coc-prettier|q'

#C/C++/Objective-C, use clangd
vim -c 'CocInstall -sync coc-clangd|q'
vim -c 'CocInstall -sync coc-cmake|q'
#vim -c 'CocInstall -sync coc-eslint |q'
vim -c 'CocInstall -sync coc-go|q'
vim -c 'CocInstall -sync coc-rls|q'
vim -c 'CocInstall -sync coc-tsserver|q'
vim -c 'CocInstall -sync coc-vimlsp|q'
vim -c 'CocInstall -sync coc-yaml|q'
vim -c 'CocInstall -sync coc-cfn-lint|q'

#Update
vim -c 'CocUpdateSync|q'

echo "Done."
