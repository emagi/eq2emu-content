--[[
    Script Name    : SpawnScripts/WestFreeport/GrevakStonecatcher.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.27 03:01:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end