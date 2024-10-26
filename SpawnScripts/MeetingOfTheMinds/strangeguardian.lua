--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/strangeguardian.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 01:10:31
    Script Purpose : Governs behavior for a strange guardian in Meeting of the Minds.
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    --NPCModule(NPC, Spawn)
end
 
function attacked(NPC, Spawn)
end

function hailed(NPC, Spawn)
end

function death(NPC, Spawn)
end
 
function respawn(NPC)
spawn(NPC)
end