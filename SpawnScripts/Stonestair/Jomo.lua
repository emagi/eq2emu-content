--[[
    Script Name    : SpawnScripts/Stonestair/Jomo.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.16 12:02:05
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

