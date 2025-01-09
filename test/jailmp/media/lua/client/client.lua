local ____exports = {}
local ____pipewrench_2Devents = require('lua_modules/@asledgehammer/pipewrench-events/PipeWrench-Events')
local Events = ____pipewrench_2Devents.default
Events.onPlayerMove:addListener(function(player)
    print("Hello from Pipewrench Template! Modify the code as you need. Have a great start with modern javascript.")
end)
return ____exports
