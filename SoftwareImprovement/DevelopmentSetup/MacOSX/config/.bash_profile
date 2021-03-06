# Load up aliases (if any)
if [ -d ~/.aliases ]; then
    for f in ls ~/.aliases/*; do source $f; done
fi

# Load up functions (if any)
if [ -d ~/.functions ]; then
    for f in ls ~/.functions/*; do source $f; done
fi

# Setup Terminal Color Scheme
git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION='\033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch)\[\033[00m\] \$ '
PS1=$TIME$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'