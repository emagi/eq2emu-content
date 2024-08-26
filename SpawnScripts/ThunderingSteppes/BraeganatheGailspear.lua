--[[
    Script Name    : SpawnScripts/ThunderingSteppes/BraeganatheGailspear.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.25 09:08:45
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(140 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(300 + dmgMod))

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end