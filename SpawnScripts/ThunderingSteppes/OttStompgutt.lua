--[[
    Script Name    : SpawnScripts/ThunderingSteppes/OttStompgutt.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.20 03:06:08
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    Named(NPC, Spawn)
    dmgMod = GetStr(NPC)/10
    SetInfoStructUInt(NPC, "override_primary_weapon", 1)        
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", math.floor(135 + dmgMod)) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", math.floor(275 + dmgMod))
end

function aggro(NPC, Spawn)
AddTimer(NPC,1500,"ShoutOut",1,Spawn)
end

function ShoutOut(NPC,Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/optional1/ott_stompgut/steppes/quest/025_quest_giant_ott_stompgut_aoi_callout_bf4816e2.mp3", "Ye come lookin' for that sticker the fool dropped when he ran?  Ye can't have it!  It's mine now!", "", 910547687, 2450920265, Spawn, 0)
end

function respawn(NPC)
	spawn(NPC)
end