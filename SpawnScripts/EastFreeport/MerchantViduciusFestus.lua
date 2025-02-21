--[[
    Script Name    : SpawnScripts/EastFreeport/MerchantViduciusFestus.lua
    Script Author  : Xiki
    Script Date    : 2025.02.21 12:02:37
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5987

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, Quest1) then
	    Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/merchant_valary/commonlands/quests/merchantvalary/vidiciusfestus_merchantvalary_x1_initial.mp3", "", "nod", 1558017824, 4223669556, Spawn, 0)
        Dialog.AddDialog("")
        Dialog.AddOption("", "Dialog2")
        Dialog.Start()
    else
    end
end

function respawn(NPC)
	spawn(NPC)
end