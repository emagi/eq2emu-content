--[[
	Script Name		: SpawnScripts/BeggarsCourt/Aquila.lua
	Script Purpose	: Aquila
	Script Author	: Dorbin
	Script Date		: 2022.07.18
	Script Notes	: 
--]]
dofile("SpawnScripts/Generic/GenericGuardVoiceOvers.lua")
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if GetFactionAmount(Spawn,12)<0 then
        else
    FaceTarget(NPC, Spawn)
    GenericGuardHail(NPC,Spawn)
end
end

function RandomGreeting(NPC, Spawn)
	local choice = MakeRandomInt(1,4)

	if choice == 1 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_7fa14d4.mp3", "Do not challenge my authority citizen.  In Freeport, the Overlord's word is law!", "scold", 1754864091, 2519992839, Spawn, 0)
	elseif choice == 2 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_870ae3cb.mp3", "The Overlord commands me to patrol this area, and so I must.", "tapfoot", 1380232703, 3690439064, Spawn, 0)
	elseif choice == 3 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_edb196f8.mp3", "All praises to the Overlord.  The Militia protects loyal citizens of Freeport.", "salute_freeport", 2179538941, 3128154335, Spawn, 0)
	elseif choice == 4 then
		PlayFlavor(NPC, "voiceover/english/halfelf_eco_evil_1/ft/service/guard/halfelf_guard_service_evil_1_hail_gm_582205e1.mp3", "Do you have business with the Freeport Militia?", "glare", 3166142927, 721856003, Spawn, 0)
	end
end