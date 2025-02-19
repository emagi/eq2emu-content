--[[
    Script Name    : SpawnScripts/ThunderingSteppes/askeletalfootsoldier.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.03.22 04:03:00
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ChooseClass(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function ChooseClass(NPC)
    SetClass = MakeRandomInt(1,2)
    if SetClass == 1 then
        SpawnSet(NPC, "class", 3)
    elseif SetClass == 2 then
        SpawnSet(NPC, "class", 4)
    end
end