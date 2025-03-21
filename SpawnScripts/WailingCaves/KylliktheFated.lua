--[[
    Script Name    : SpawnScripts/WailingCaves/KylliktheFated.lua
    Script Author  : premierio015
    Script Date    : 2020.07.10 04:07:21
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(55+ dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(95 + dmgMod))
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
end

function respawn(NPC)

end

function aggro(NPC)
PlayFlavor(NPC, "voiceover/english/optional1/kyllik_the_fated/wailingcaves/iksar/015_iksar_necromancer_g1_aggro_44b9698c.mp3", "Come, join my collection.", "", 2365959993, 1489528292)
end

function healthchanged(NPC)
PlayFlavor(NPC, "voiceover/english/optional1/kyllik_the_fated/wailingcaves/iksar/015_iksar_necromancer_g1_halfhealth_87ff94c5.mp3", "I bleed.  Now it's your turn.", "", 4291228286, 3085307034)
end

