--[[
    Script Name    : SpawnScripts/NektulosClassic/aDragoonlieutenantPatrol.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.04.27 02:04:23
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

