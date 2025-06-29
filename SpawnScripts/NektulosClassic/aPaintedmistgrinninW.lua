--[[
    Script Name    : SpawnScripts/NektulosClassic/aPaintedmistgrinninW.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.29 09:05:04
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
    worship(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function worship(NPC)
    PlayFlavor(NPC,"","","notworthy",0,0)
    AddTimer(NPC, 8000, "worship")
end