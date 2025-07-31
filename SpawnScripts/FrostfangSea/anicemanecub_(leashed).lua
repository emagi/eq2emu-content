--[[
	Script Name	: SpawnScripts/FrostfangSea/anicemanecub_(leashed).lua
	Script Purpose	: the spawns leashed up at gwenevyn's cove named "an icemane cub"
	Script Author	: theFoof
	Script Date	: 2013.05.25
	Script Notes	:
--]]
local IcemanesCometh = 18
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function SpawnAccess(NPC, Spawn)
    if HasCompletedQuest(Spawn, IcemanesCometh) then
	    AddSpawnAccess(NPC, Spawn)
	end
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end