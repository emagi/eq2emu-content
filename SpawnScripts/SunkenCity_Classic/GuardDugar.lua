--[[
    Script Name    : SpawnScripts/SunkenCity_Classic/GuardDugar.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.10.24 03:10:13
    Script Purpose : 
                   : 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end


function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
end
end