--[[
    Script Name    : SpawnScripts/NorthFreeport/Azrael.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.21 02:02:37
    Script Purpose : 
                   : 
--]]


function spawn(NPC, Spawn)
	
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end
