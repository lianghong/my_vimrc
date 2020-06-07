#!/bin/bash
set -e

if [ ! -d "$HOME/.vim_runtime" ]; then
    mkdir -p "$HOME/.vim_runtime/vimrcs"
    mkdir -p "$HOME/.vim_runtime/temp_dirs/undodir"
fi

#pip3 install pyflakes autopep8 yapf isort black mypy jedi pytest -U --user
#sudo apt-get install -y build-essential python3-dev git
#npm -g install eslint prettier yarn vint shellcheck
#sudo apt-get install -y flake8 bandit eslint clangd clang-format yamllint tidy
#sudo apt-get install -y pylint exuberant-ctags


cp *.vim "$HOME/.vim_runtime/vimrcs"
cp vimrc "$HOME/.vimrc"
cp coc-settings.json "$HOME/.vim"

echo "Done."
