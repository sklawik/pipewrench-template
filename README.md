# Code mods for Project Zomboid in Javascript
Follow this and you are done. We cover everything for you - no need to do config by yourself.

```sh
git clone https://github.com/sklawik/pipewrench-template 
cd ./pipewrench-template 
npm i
npm run build
```
You are good and will handle things from now on, if you need help look below for support.
Happy Coding!

# About
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


# To do
1. Let the production code be in workshop ready for release state to Steam Workshop.
- So you can code in it and also without problem click "publish on workshop" after changes.
No more need to do this manually.
2. Do the same as above but for both build 41 and build 42.
3. Finish config script.
4. Auto compile after code change. That may be harder because wsl doesn't support fully ready solutions from node packages. Something may exist but it is needed to be found and tested.
5. Basic gamemode as example
6. Command handling example in the gamemode


# Q&A
1. Why is the script creating everything under Workshop folder, isn't mods folder designed to this?
- Actually, Workshop folder behaves same as Mods folder. You will see your mod ready to play in mods list. In fact - when you want to upload an item to Steam Workshop you
need to get into game then click -> Workshop and then, you will see ready for production code that you have built using command "npm run build".
If a script would store your project under Mods folder, you will waste time of coping and paste it to Workshop folder. 
It is so hard for zomboid devs to add a button to upload a mod to Steam workshop directly from the mods list that are in mods folder for some reason.

# How to setup Project Zomboid for modding
// to do 