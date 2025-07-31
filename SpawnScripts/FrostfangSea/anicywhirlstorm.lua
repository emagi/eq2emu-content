--[[
	Script Name		:	SpawnScripts/FrostfangSea/anicywhirlstorm.lua
	Script Purpose	:	for the spawn "an ice whirlstorm"
	Script Author	:	theFoof
	Script Date		:	2013.6.16
	Script Notes	:	
--]]

require "SpawnScripts/Generic/NPCModule"

function spawn(NPC)
    NPCModule(NPC, Spawn)
	SpawnChooseRandomMovement(NPC)
	AddTimer(NPC, 20000, "Despawn")
end