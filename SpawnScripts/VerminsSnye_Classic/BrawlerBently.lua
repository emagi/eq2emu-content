--[[
    Script Name    : SpawnScripts/VerminsSnye_Classic/BrawlerBently.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.04.01 07:04:17
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