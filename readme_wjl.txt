1. move this folder to ~/.emacs.d
2. copy emacs in ~/.emacs.d to ~/.emacs


to plugins folder and clone the below git
git clone https://github.com/auto-complete/auto-complete.git
git clone https://github.com/auto-complete/popup-el.git
git clone https://github.com/auto-complete/fuzzy-el.git
git clone https://github.com/capitaomorte/yasnippet.git



ctags
sudo apt-get install ctags



cscope
sudo apt-get install cscope cscope-el
change /usr/bin/cscope-indexer 
from
cscope -b -i $LIST_FILE -f $DATABASE_FILE
to
cscope -q -b -i $LIST_FILE -f $DATABASE_FILE
