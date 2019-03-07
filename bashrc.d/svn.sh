# svn

alias svnre="svn revert . -R"
alias svnclr="svn st |awk '{print $2}' | xargs rm -rf [}"
alias svnup="svn update"
alias svnvi="svn ci --editor-cmd vi"
