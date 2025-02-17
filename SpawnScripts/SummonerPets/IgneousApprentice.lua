--[[
    Script Name    : SpawnScripts/SummonerPets/IgneousApprentice.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.09 10:02:32
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    --SetInfoStructUInt(NPC, "override_primary_weapon", 1)
    --SetInfoStructUInt(NPC, "primary_weapon_damage_low", 10) 
    --SetInfoStructUInt(NPC, "primary_weapon_damage_high", 10)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end