# Start scripting in Javascript for Project Zomboid right now.
Follow this and you are done. We cover everything for you - no need to do config by yourself.
Happy Coding!
```sh
git clone https://github.com/sklawik/pipewrench-template 
cd ./pipewrench-template 
npm i
npm run build
```

Pipewrench template is all you need to start coding Project Zomboid mod in Javascript.
A mod that is a local one, or a multiplayer server.
Coding using Windows, Linux or MacOS?
That choice is also yours.
Releasing for build 41 or build 42? We've got you covered. 
Take advantage of ready to run scripts to publish your own modification. Have fun.

# Important
1. Scripting on Windows shall be using WSL.
> How to set up and run WSL: https://learn.microsoft.com/en-us/windows/wsl/install

2. This repo is in early development
> A lot will be added and a lot will be improved


# Q&A

1. Why is the script creating everything under Workshop folder, isn't mods folder designed to this?
- Actually, Workshop folder behaves same as Mods folder. You will see your mod ready to play in mods list. In fact - when you want to upload an item to Steam Workshop you
need to get into game then click -> Workshop and then, you will see ready for production code that you have built using command "npm run build".
If a script would store your project under Mods folder, you will waste time of coping and paste it to Workshop folder. 
It is so hard for zomboid devs to add a button to upload a mod to Steam workshop directly from the mods list that are in mods folder for some reason.
