#!/bin/sh

print(){
    message=$1
    echo ">>> $1"
}

didUserChoseProjectZomboidVersion(){
    if [ -f "./.pipewrench-template/build42" ] || [ -f "./.pipewrench-template/build41" ]; then
        echo "true"
    else
        echo "false"
    fi
}

echo "test output: $(didUserChoseProjectZomboidVersion)"


print "[Pipewrench Template: Initializing building script...]"
print "Remember! The output in console starting with >>> is from this script."
print "Checking if you downloaded essentials..."
if [ -d "node_modules" ]; then
    print "Cool. node_modules is here. Remember, you have to chose when and what to upgrade using 'npm install' by yourself."
    print " "
else
    print "You did not run 'npm install' but I'm going to do this for you."
    print "Downloading essentials. This might take a while."
    npm install -q
    clear
    print "Done."

fi

 answer=""

if $(didUserChoseProjectZomboidVersion="false"); then
    

   
    while [ "$answer" != "y" ] && [ "$answer" != "n" ]; do 
       
          print "Are you developing for the new Project Zomboid version build 42? (y/n)"
          read answer
           clear
    done
       
fi

if [ $answer="y" ]; then
    touch "./.pipewrench-template/build42"
else
    touch "./.pipewrench-template/build41"
fi






IS_WSL=false

uname -a | grep -q "WSL"
if [ $? -eq 0 ]; then
    IS_WSL=true
else
    IS_WSL=false
fi

if [ "$IS_WSL" = "true" ];  then
    echo ">>> You are using WSL."
else
    echo "False"
fi






#   "compile": "tstl",
#     "clean": "del-cli dist",
#     "check": "prettier --check . && eslint .",
#     "lint": "prettier --write . && eslint .",
#     "watch": "tstl --watch --outDir ~/Zomboid/mods"