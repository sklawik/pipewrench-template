/**
 * @noSelfInFile
 *
 * NOTE: Use this at the top of your TypeScript files. This prevents functions & methods
 *       from prepending a 'self' reference, which is usually not necessary and complicates
 *       rendered Lua code.
 */

import { getPlayer, IsoPlayer } from '@asledgehammer/pipewrench';
import Events from '@asledgehammer/pipewrench-events';



Events.onPlayerMove.addListener((player: IsoPlayer) =>{
    player.Say("Hello from Pipewrench Template! Modify the code as you need. Have a great start with modern javascript.");
})


