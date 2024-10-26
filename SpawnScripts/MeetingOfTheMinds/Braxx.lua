--[[
    Script Name    : SpawnScripts/MeetingOfTheMinds/Braxx.lua
    Script Author  : Neveruary
    Script Date    : 2021.10.05 12:10:19
    Script Purpose : Governs the behavior of Braxx in A Meeting of the Minds.
                   : Spell functions de-activated pending proper spell implementation on mobs.
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    --NPCModule(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end