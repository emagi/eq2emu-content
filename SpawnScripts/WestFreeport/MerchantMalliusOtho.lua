--[[
    Script Name    : SpawnScripts/WestFreeport/MerchantMalliusOtho.lua
    Script Author  : Xiki
    Script Date    : 2025.02.25 12:02:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5991

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/mallius_otho/fprt_west/mer_malliusotho.mp3", "", "nod", 3848937614, 146827173, Spawn, 0)    
	if GetQuestStep(Spawn, Quest1) then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Do you want a drink?  Show me coin, and I'll fetch ya a drink.  No coin. No drink.")
        Dialog.AddOption("Actually I have a letter for you from Julie Danerous", "Dialog1")
        Dialog.Start()
    else
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Do you want a drink?  Show me coin, and I'll fetch ya a drink.  No coin. No drink.")
        Dialog.AddOption("Sorry to bother you.")
        Dialog.Start()
	end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Oh great... What does that wench want now...? Hand that letter over... And take this as payment, now begone from my sight.")
    Dialog.AddOption("You sure are rude to someone helping you...")
    SetStepComplete(Spawn, Quest1, 1)
    Dialog.Start()
end