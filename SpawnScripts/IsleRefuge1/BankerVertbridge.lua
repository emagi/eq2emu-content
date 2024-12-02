--[[
    Script Name    : SpawnScripts/IsleRefuge1/BankerVertbridge.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.12.01 07:12:10
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