--[[
    Script Name    : SpawnScripts/SouthFreeport/WeaponsmithClodiaLaeca.lua
    Script Author  : Xiki
    Script Date    : 2025.02.18 11:02:38
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"


local Quest1 = 5984

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) then
	   Dialog1(NPC, Spawn)
	elseif GetQuestStep(Spawn, Quest1)==2 then
	    Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Do you have the Speckled Rattler skins?")
        Dialog.AddOption("Yes I have them here.", "FinishQuest1")
        Dialog.AddOption("Sorry, not yet.", "No")
        Dialog.Start()
	else
	   PlayFlavor(NPC, "voiceover/english/weaponsmith_clodia_laeca/fprt_south/100_mercadventuresuppliesclodialaeca_multhail1_3e454c2.mp3", "Please enter. My supplies are in high demand. Find what you need and be on your way.", "nod", 3358205480, 1097832667, Spawn, 0)
	end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/weaponsmith_clodia_laeca/fprt_south/mer_clodialaeca.mp3", "", "nod", 1696902859, 1391820864, Spawn, 0)
	Dialog.AddDialog("Come in, come in, I've heard of you. Don't be surprised, word gets around if you know where to listen. Now, from what I've heard, you're going to be needing supplies of the type that I am selling. Check out my wares if you don't believe me and see that I ain't lying.")
    Dialog.AddOption("You've heard of me? Well, perhaps you have some work that I could help with.", "Dialog2")
    Dialog.AddOption("Sorry but I have to get going.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/clodia_laeca/fprt_south/mer_clodialaeca000.mp3", "", "nod", 3540612569, 2091372351, Spawn, 0)
    Dialog.AddDialog("You can at that! I can't keep up with the demand for Speckled Rattler skins. My customers love them, and more skins means more profit for me! I need as many skins as you can collect. Remember, there's no such thing as too many Speckled Rattler skins!")
    Dialog.AddOption("Sure I could help with that, I'll be back in no time.")
    Dialog.Start()
    OfferQuest(NPC, Spawn, Quest1)
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, Quest1, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great! You brought back the Speckled Rattler skins! Now I can finish this work order, and here's your reward as promised! Now perhaps that you have some coin, you can buy something from my shop!")
    Dialog.AddOption("Thanks.")
    Dialog.Start()
end