copy emacs to ~/.emacs

purcell
git clone https://github.com/purcell/emacs.d.git
git clone https://github.com/eschulte/emacs24-starter-kit.git

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
