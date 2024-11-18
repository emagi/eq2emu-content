--[[
    Script Name    : SpawnScripts/antonica/SirHegelHammerheart.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.18 04:11:24
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