## Set the home for ant
export ANT_HOME=$HOME/Devel/apache-ant-1.7.1
export ANT_OPTS='-Xmx1024m -XX:MaxPermSize=512m'

## Set the home for maven
#export M2_HOME=$HOME/Devel/apache-maven-3.0.4
#export M2_HOME=$HOME/Devel/apache-maven-3.2.5
export M2_HOME=$HOME/Devel/apache-maven-3.3.3
export MAVEN_OPTS='-Xmx1024m -XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m -Dsun.lang.ClassLoader.allowArraySyntax=true -ea'

## Creating a special home for Java 5, 6, 7 and 8
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
export JAVA_5_HOME=$(/usr/libexec/java_home -F -v1.5 -a x86_64 -d64)

## Choosing our default Java for the system
export JAVA_HOME=$JAVA_8_HOME
export JAVA_OPTS='-Xmx1024m -XX:MaxPermSize=512m -Dsun.lang.ClassLoader.allowArraySyntax=true -Djava.net.preferIPv4Stack=true'

## Finally put maven, ant and gradle to the system path
export PATH=$PATH:$M2_HOME/bin:$ANT_HOME/bin

## Command line alias so we can switch Java version
alias java5='export JAVA_HOME=$JAVA_5_HOME;export PATH=$(echo $PATH | sed -E "s,(/System)?/Library/Java/JavaVirtualMachines/[a-zA-Z0-9._]+/Contents/Home/bin:,,g");export PATH=$JAVA_HOME/bin:$PATH'
alias java6='export JAVA_HOME=$JAVA_6_HOME;export PATH=$(echo $PATH | sed -E "s,(/System)?/Library/Java/JavaVirtualMachines/[a-zA-Z0-9._]+/Contents/Home/bin:,,g");export PATH=$JAVA_HOME/bin:$PATH'
alias java7='export JAVA_HOME=$JAVA_7_HOME;export PATH=$(echo $PATH | sed -E "s,(/System)?/Library/Java/JavaVirtualMachines/[a-zA-Z0-9._]+/Contents/Home/bin:,,g");export PATH=$JAVA_HOME/bin:$PATH'
alias java8='export JAVA_HOME=$JAVA_8_HOME;export PATH=$(echo $PATH | sed -E "s,(/System)?/Library/Java/JavaVirtualMachines/[a-zA-Z0-9._]+/Contents/Home/bin:,,g");export PATH=$JAVA_HOME/bin:$PATH'

## Colorize the ls output
alias ls='ls -G'
 
## Use a long listing format
alias ll='ls -la'
 
## Show hidden files
alias l.='ls -d .*'

## Sublime Text
alias subl="open -a /Applications/Sublime\ Text.app"

## Hide and Show hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## https://www.kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\n\w\[$(tput setaf 7)\]\n$ \[$(tput sgr0)\]"

