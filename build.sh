#!/bin/sh

print(){
    message=$1
    echo ">> $1"
}

didUserChoseProjectZomboidVersion(){
    if [ -f "./.pipewrench-template/build42" ] || [ -f "./.pipewrench-template/build41" ]; then
        echo "true"
    else
        echo "false"
    fi
}

echo "test output: $(didUserChoseProjectZomboidVersion)"


echo "----------- TELL ME HOW WE BUILD ----------------"
print "Checking for packages for template to run..."
if [ -d "node_modules" ]; then
    print "Everything fine. Remember, you have to chose when and what to upgrade using 'npm install' by yourself."

else
    print "You did not run 'npm install' but I'm going to do this for you."
    print "Downloading essentials. This might take a while."
    npm install -q
   
    clear
    print "Finished downloading npm packages."

fi

 answer=""

if [ "$(didUserChoseProjectZomboidVersion)" = "false" ]; then
    while [ "$answer" != "y" ] && [ "$answer" != "n" ]; do 
          print "Are you developing for the new Project Zomboid version build 42? (y/n)"
          read answer
          clear
    done
    if [ $answer="y" ]; then
    touch "./.pipewrench-template/build42"
    print "------You chose build42 ------"
    else
        touch "./.pipewrench-template/build41"
        print "---- You chose build41 ------"
    fi
    
print "You can always change build version by running NPM RUN CONFIG"

fi

IS_WSL=false

uname -a | grep -q "WSL"
if [ $? -eq 0 ]; then
    IS_WSL=true
else
    IS_WSL=false
fi

UNIX_PATH="/Users/$(whoami)/Zomboid/Workshop/"
WINDOWS_PATH=""
#windows path is going to be filled when using wsl

BUILD_PATH=""

if [ "$IS_WSL" = "true" ];  then
    echo ">>> You are using WSL."
    apt-get install wslu -y 
    # wslu is package so wsl can get user name from windows outside of wsl. it will be used for paths
    WINDOWS_PATH=$(wslpath "$(wslvar USERPROFILE)/Zomboid/Workshop/")
    BUILD_PATH=$WINDOWS_PATH
   
else
    BUILD_PATH=$UNIX_PATH

fi



if [ -f "./.pipewrench-template/build42" ]; then
    THIS_DIRECTORY=$(pwd)
    print "Code will compile for BUILD 42..."
    tstl --outDir "./"
    cd pipewrenchtemplate
    mkdir Contents
    cd Contents
    mkdir mods
    cd mods
    mkdir pipewrench-template
    cd pipewrench-template
    mkdir 42
    mkdir common
    mkdir media
    mv "$THIS_DIRECTORY/pipewrenchtemplate/media/*" "$THIS_DIRECTORY"/pipewrenchtemplate/Contents/mods/pipewrench-template/media/
    cd "$THIS_DIRECTORY"
    # mv ./pipewrenchtemplate $BUILD_PATH


else
    print "Code will compile for BUILD 41..."
    tstl --outDir "$BUILD_PATH"
fi





echo "Your project lays under: $BUILD_PATH"