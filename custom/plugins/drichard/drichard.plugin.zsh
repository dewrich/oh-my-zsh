#--------------------------------------------------------------
# Environmental Variables
#--------------------------------------------------------------
 
# TODO: clean these up
#
# 
export AWS_ASSUME_ROLE_TTL="1h"
export AWS_SDK_LOAD_CONFIG=1
export NPM_TOKEN=aa57e181-aefc-48da-8b68-36ed6e3cada5
export AWS_VAULT_BACKEND=keychain
export GONOSUMDB=github.com/ValiMail

export VISUAL=vim
export GIT_SSL_NO_VERIFY=true
export HISTTIMEFORMAT="%s "
export HISTSIZE=1000000
export BIN_HOME=$HOME/bin
export GOPATH=$HOME/projects/go
export CODE_PATH=$GOPATH/src/github.com/ValiMail
export GIMME_PATH=$HOME/.gimme/versions/go1.14.1.darwin.amd64
export RUST_PATH=/home/drichard/.cargo
export PROJECT_HOME=$HOME/projects

# set in the .bashrc
export ROOT=
#export MOJO_CONFIG=$HOME/cdn.conf
#export TO_DEFAULT_USER=dewrich
export GO_HOME=$HOME/projects/go
export GH_HOME=$GO_HOME/src/github.com/apache/incubator-trafficcontrol
#export GH_HOME=$GO_HOME/src/github.com/apache/incubator-trafficcontrol
export TO_APP_HOME=$GH_HOME/traffic_ops/app
export TO_APP_LOCAL_HOME=$TO_APP_HOME/local
export APPS_HOME=$ROOT/opt
export TOMCAT_HOME=C:\opt\apache-tomcat-6.0.16
export ANT_HOME=$APPS_HOME/ant
export GRAILS_HOME=$APPS_HOME/grails
export GROOVY_HOME=/opt/groovy-1.5.6
export GVIM_HOME=$APPS_HOME/Vim/Vim71
#export JAVA_HOME=/Library/Java/Home
export MAVEN_HOME=$APPS_HOME/maven
#export MAVEN_OPTS="-Djava.awt.headless=true -Xms256m -Xmx1408m -XX:PermSize=256m -XX:MaxPermSize=256m"
export MAVEN_OPTS=-Djava.awt.headless=true
#export RUBYMINE_JDK=$JAVA_HOME
#export PYTHONPATH=/usr/local/bin/python
#export PGHOME=/Applications/Postgres.app/Contents/Versions/9.4
#export GEM_PATH=$GEM_PATH:/usr/local/lib/site_ruby/1.8

export EDITOR=vim
export SVN_EDITOR="vim --noplugin"
export MYAPP_LOG_FORMATTER=text

# Enables no cd in zsh
setopt auto_cd

#Set the bin subdirectories on the path
if [[ -e ~/bin ]];then
  for i in `ls -d ~/bin/*`
  do
  	export PATH=$PATH:$i/bin
  done
fi

# set commandline editing to the vi editor
#set -o vi
                                                                                
# set noclobber to prevent overwriting of files by redirection
#set -C

#Ignore CVS directories and temporary files made by vi (see "man bash" then search for FIGNORE)
export FIGNORE=".svn"

#export GOMAXPROCS=6

#Thirdparty Paths
export PATH=$HOME/bin:$TO_APP_HOME/local/bin:$RUST_PATH/bin:$GIMME_PATH/bin:$GOPATH/bin:/usr/local/bin:./bin:$RUBYMINE_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$GROOVY_HOME/bin::/sbin:/opt/sfw/bin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:$PATH:$PGHOME/bin
#export PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$GRAILS_HOME/bin:/sbin:$PATH

export CATALINA_OPTS="-ms64M -mx512M -XX:+CMSClassUnloadingEnabled -XX:+CMSPermGenSweepingEnabled"

# Added for github
#keychain --nogui -q $(find $HOME/.ssh/ -type f -name 'id_[r,d]sa')
#. $HOME/.keychain/$HOSTNAME-sh

#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

#--------------------------------------------------------------
# Quick Command Aliases
#--------------------------------------------------------------

alias bin="cd ~/bin"
alias be="bundle exec"
alias ber="bundle exec rake"
alias boot=". ~/.mybashrc;"
#alias bhg="grep -R $* $HOME/Dropbox/bash_perm_hist"
alias ph='find ~/perm_hist/* -name "*" | xargs grep $*'
#alias ph='find ~/perm_hist/* -name "*" | xargs grep --no-filename $*'
alias buildpjtree=buildTree
alias ca=changeAll
alias can=changeAllNoBak
alias cpath='expandPath $CLASSPATH'
alias dl='cd ${HOME}/Downloads;'
alias dli='docker ps -l -q'
alias dca='docker rm $(docker ps -qa) && docker rmi $(docker images -qa)'
alias dka='docker kill $(docker ps -qa)'

alias doc='cd ${HOME}/Documents;'
alias dut=duTotal
alias ff='find . -name '
#Find files by string and delete them "even if they have spaces between"
alias ffd='find . -name $* -print0 | xargs -0 rm'
alias ffi='find -name \*.go | grep -v vendor | xargs goimports -w'
alias ffg=findGrep
alias ffgo=findGrepGo

#alias ffg='find . -name "*"  | xargs -s 100000 egrep -s $*'
alias ffgi='find . -name "*"  | xargs -s 100000  egrep -s -i $*'
alias ffgj='find . -name "*.java"  | xargs -s 100000  egrep -s $*'
alias ffgjsp='find . -name "*.jsp"  | xargs -s 100000  egrep -s $*'
alias ffgp='find . -name "*.pl"  | xargs -s 100000  egrep -s $*'
alias ffgvi='find . -name "*"  | xargs -s 100000  egrep -s -i  -l$*'
alias ffgvj='find . -name "*.java"  | xargs -s 100000 egrep -s -l $*'
alias ffgvp='find . -name "*.pl"  | xargs -s 100000 egrep -s -l $*'
alias ffgvx='find . -name "*.xm*"  | xargs -s 100000  egrep -s -H $*'
alias ffgx='find . -name "*.xm*"  | xargs -s 100000  egrep -s $*'
alias ffwritable="find . -name '*' -perm +ugo=w | grep -v eclipsebuild | grep -v '.class'"
alias ffwritablej="find . -name \*.java -perm +ugo=w"
alias fmt='jacobe -overwrite -nobackup '
alias gff="grepFind"
alias gitc="git commit -m $* -a"
alias git10='git reset --hard master@{"10 minutes ago"}'
alias egrep='egrep --color=tty -d skip'
alias fgrep='fgrep --color=tty -d skip'
alias grep='grep --color=tty -d skip'
alias gobak=goBackToBak
alias gt='richgo test -v ./...'
#alias gt='go test -v $(go list ./... | grep -v /vendor/) $*'
alias ggrep='find . -name "*.go"  | grep -v vendor | xargs grep -r "$1"'
alias grepi="grep -i"
alias gv="gvim -o"
alias gvim="gvim -o"
#alias hg="history | grep $*"
alias h="history"
alias j="fasd_cd -d"
alias jadjar=jadJar
alias jadzip=jadZip
alias jart="jar tfv $*"
alias k='clear;'
alias kp=killProcs
alias kpn=killProcsNow
alias ll='ls -la'
alias l='ls -l'
alias lpn=list
alias lr='ls -larth'
alias lt='ls -latrh'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &' 
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias myenv='vim ~/.oh-my-zsh/custom/plugins/drichard/drichard.plugin.zsh'
alias nobak='find . -name "*.bak" | xargs -s 100000 rm'
alias nocsv='ff "CVS" | xargs rm -rf'
alias paklist="tar ztvf $*"
alias pak="tar zcvf $*"
alias path='expandPath $PATH'
alias pd="cd /public/downloads;"
alias pdl="cd /publicl/downloads;"
alias pp='enscript -2Gr -T 3 -j '
alias psg='ps -ef |grep -v grep| grep -s -i'
alias psz='ps aux | grep -w Z'
alias rbm="/opt/rubymine/bin/rubymine.sh"
alias ref="cd ~/ref"
alias rebuild="sudo mdutil -E /"
alias rmcvs="find . -name 'CVS' | xargs rm -rf"
alias rpmi='rpm -i'
alias rpmqa='rpm -qa | grep -i'
alias rpmrb='rpmbuild --rebuild'
alias rit='ruby -I"lib:test"'
alias sd="function sd(){ export $1=$PWD; }"
alias slay=slayFunc
alias srchjaro=searchJarsOnly
alias srchjar=searchJars
alias srchjarInPath=searchJarsInPath
alias synw=~/bin/synergy/syns_work.bash
alias synh=~/bin/synergy/syns_home.bash
alias tf='tail -f'
alias tmn='tmux new \; split-window'
alias ul='unzip -l $*'
alias unpak="tar zxvf $*;"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias vp='verifyPath '
alias vin='vi "+NERDTree"'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias wj='whichJar'
alias xe=xemacs
alias x="exit"

zstyle ":history-search-multi-word" page-size "8"                      # Number of entries to show (default is $LINES/3)
zstyle ":history-search-multi-word" highlight-color "fg=yellow,bold"   # Color in which to highlight matched, searched text (default bg=17 on 256-color terminals)
zstyle ":plugin:history-search-multi-word" synhl "yes"                 # Whether to perform syntax highlighting (default true)
zstyle ":plugin:history-search-multi-word" active "underline"          # Effect on active history entry. Try: standout, bold, bg=blue (default underline)
zstyle ":plugin:history-search-multi-word" check-paths "yes"           # Whether to check paths for existence and mark with magenta (default true)
zstyle ":plugin:history-search-multi-word" clear-on-cancel "no"        # Whether pressing Ctrl-C or ESC should clear entered query

#--------------------------------------------------------------
# Functions
#--------------------------------------------------------------
function duTotal() {

du -sk ./* | sort -n | awk 'BEGIN{ pref[1]="K"; pref[2]="M"; pref[3]="G";} { total = total + $1; x = $1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf("%g%s\t%s\n",int(x*10)/10,pref[y],$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf("Total: %g%s\n",int(total*10)/10,pref[y]); }'

}

function expandPath(){ echo $*|perl -i -p -e 's/[: ]/\n/g';}

function syncMeFcn()
{
  syncMeNoDeployFcn;
  ant deploy;
}


function validateJarInClassPath()
{ 
	echo "=========================================================================" 
	filesList=`echo $1 | perl -i -p -e 's/:/\n/g'`

	for i in $filesList
	do
  		if [ ! -f $i ]; then
     		echo  $i "  <------------- File DOES NOT exist."
		else
   		echo $i
  		fi
	done
	echo "=========================================================================" 
}

function findGrep()
{
    SEARCH_STRING=$1
    echo "Searching..."
    find . -type f -name '*' | grep -v .svn | grep -v .git | xargs grep -i $*
    #find . -name '*' | grep -v .svn | grep -v .git | xargs grep -i $*
}

function findGrepGo()
{
    SEARCH_STRING=$1
    echo "Searching..."
    find . -name '*.go' | grep -v vendor | xargs grep -in $*
}

function searchJars()
{
    SEARCH_STRING=$1
    find . -name '*.jar' | while read i
    do
     export ESCAPED=`echo "$i" | sed 's/ /\\\ /g'`
     # grep -H $SEARCH_STRING "$i"
     echo "Searching Jar:" $i
     jar -tvf "$ESCAPED" | grep -i $SEARCH_STRING
     #jar -tvf "$ESCAPED" | tr "\n" "\0" | xargs -0 grep -i $SEARCH_STRING
     #jar -tvf "$i" | grep -i $SEARCH_STRING
    done
}

function searchJars()
{
  for i in `find . -name '*.jar'`
  do
     echo $i;
     jar -tvf $i;
  done;
}

searchJarsInPath()
{
		searchString=$1
		jarfiles=$2
		list_of_jarfiles=`echo $jarfiles |perl -i -p -e 's/:/\n/g'`
		echo "jarfiles: " $jarfiles
		for i in $list_of_jarfiles
		do
		   if [ -f $i ]
		   then
		      echo "Found: "$i
		      jar -tvf $i | grep -i $searchString;
		   else
		      echo "File Not Found: "$i
		   fi
		done
}

searchJarsOnly()
{
       for i in `find . -name "*.jar"`
       do
          output=`jar -tvf $i | grep -i -lZ $*`
          if [[ $? = 0 ]] ; then
             echo $i
          fi
          echo $output
       done
}
searchZips()
{
       for i in `find . -name "*.zip"`; do echo $i; unzip -l $i | grep -i $*; done
}


grepFind()
{
	grep -si $* `find .`
}

verifyPath()
{
   FILES_EXIST=1
	echo "=========================================================================" 
	for i in `echo $*|perl -i -p -e 's/:/\n/g'`
   do
      if [[ ! -e $i ]]
		then
			FILES_EXIST=0
			echo $i does not exist
		fi
	done
	if [ $FILES_EXIST -eq 1 ]
	then
		echo all files in path exist
	fi
	echo "=========================================================================" 
}

whichJar()
{
	SEARCH=$1
	shift
	echo "=========================================================================" 
	echo Searching for $SEARCH
	for i in `echo $*|perl -i -p -e 's/:/\n/g'`
   do
      if [[ ! -e $i ]]
		then
			FILES_EXIST=0
			echo $i does not exist
		else
			echo searching in $i 
			if [[ -f $i ]]
			then
			   jar -tvf $i | grep -i $SEARCH
			fi
			if [[ -d $i ]]
			then
			    ls -R $i | grep -i $SEARCH
			fi
		fi
	done
	echo "=========================================================================" 
}

expandPath()
{
	echo $*|perl -i -p -e 's/:/\n/g';
}

changeAllNoBak()
{
	changeAll $@
	nobak
}

changeAll()
{
	export CHANGEALLFROM=$1;
	export CHANGEALLTO=$2;
	shift 2;	
	cmd=`echo "perl -p -i.bak -e's|${CHANGEALLFROM}|${CHANGEALLTO}|g' ${*}"`
 	eval $cmd
}

#Appends to the perm_hist files
zshaddhistory() {
   TODAYS_MONTH=`expr \`date +%m\` `
   TODAYS_DAY=`expr \`date +%d\` `
   TODAYS_YEAR=`expr \`date +%Y\` `

   TODAYS_HOUR=`expr \`date +%H\` `
   TODAYS_MIN=`expr \`date +%M\` `
   TODAYS_SECS=`expr \`date +%S\` `
   TODAYS_AM_PM=`expr \`date +%p\` `
   TODAYS_TIME="$TODAYS_MONTH $TODAYS_DAY, $TODAYS_YEAR - $TODAYS_HOUR:$TODAYS_MIN:$TODAYS_SECS $TODAYS_AM_PM"

   mkdir -p ~/perm_hist
   HISTORY_LINE="DATE: $TODAYS_TIME $USER $(history | tail -1)"

   HISTORY_FILE="$HOME/perm_hist/`date +%Y-%m-%d`_history"
   touch $HISTORY_FILE
   echo $HISTORY_LINE >> $HISTORY_FILE
}

jj() {
    local dir
    dir=$(fasd -Rdl |\
        sed "s:$HOME:~:" |\
        fzf --no-sort +m -q "$*" |\
        sed "s:~:$HOME:")\
    && pushd "$dir"
}
compdef jj

jd() {
    local dir
    dir=$(find ${1:-*} -path '*/\.*'\
        -prune -o -type d\
        -print 2> /dev/null | fzf +m)
    [ -d "$dir" ] && pushd "$dir"
}
compdef jd

jf() {
    local file
    local dir
    file=$(fzf +m -q "$1")\
        && dir=$(dirname "$file")
    [ -d "$dir" ] && pushd "$dir"
}
compdef jf

les() {
    ftype=$(pygmentize -N "$1")
    pygmentize -l "$ftype"\
      -f terminal "$1" |\
        less -R
}
compdef les

vv() {
    local file
    if [[ -e "$1" ]]; then
        les "$1"
    else
        file=$(fzf --query="$1"\
          --select-1 --exit-0)
        [ -n "$file" ] && les "$file"
    fi
}
compdef v
