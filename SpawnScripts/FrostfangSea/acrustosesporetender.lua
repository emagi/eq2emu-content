--[[
	Script Name	: SpawnScripts/FrostfangSea/acrustosesporetender.lua
	Script Purpose	: handles the mob "a crustose sporetender"
	Script Author	: theFoof
	Script Date	: 2013.5.13
	Script Notes	:
--]]
require"SpawnScripts/Generic/NPCModule"

local RepellingCritters = 7

function spawn(NPC)
	NPCModule(NPC)
	RandomMovement(NPC, Spawn, 8, -8, 2, 8, 15)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster, SpellName)
    if SpellName == "Spray" then
	    if GetQuestStep(Caster, RepellingCritters) == 1 then
		    AddStepProgress(Caster, RepellingCritters, 1, 1)
		end
		SetSpeed(Target, 13)
		MoveToLocation(Target, -139.96, 36.90, -811.62)
		AddTimer(Target, 5000, "Despawn")
	end
end