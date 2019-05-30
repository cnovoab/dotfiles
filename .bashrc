alias ll='ls -alF'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        echo "[${BRANCH}]"
    else
	echo ""
    fi
}
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\]:\[\e[37m\]\w\[\e[m\] \[\e[31m\]\`parse_git_branch\`\[\e[m\] "
export GEM_HOME=$HOME/.gem
export PATH="$GEM_HOME/bin:$PATH"
