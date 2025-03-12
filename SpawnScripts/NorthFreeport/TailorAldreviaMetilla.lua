--[[
    Script Name    : SpawnScripts/NorthFreeport/TailorAldreviaMetilla.lua
    Script Author  : Xiki
    Script Date    : 2025.03.10 10:03:16
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5978

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, Quest1)==2 then
	    Dialog.New(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla000.mp3", "", "nod", 4188461435, 706009708, Spawn, 0)
        Dialog.AddDialog("Oh, hello there.  Have a seat and make yourself comfortable.")
        Dialog.AddOption("I'm actually looking for Pythus.", "Dialog1")
        Dialog.AddOption("Nevermind.", "No")
        Dialog.Start()
    else
        Say(NPC, "Begone.")
    end
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla001.mp3", "", "nod", 669839309, 2607058274, Spawn, 0)
    Dialog.AddDialog("Sure, I have pie. Cherry, blueberry, and apple. Can I get you a slice?")
    Dialog.AddOption("No, not pie; Pythus. He's a man; a burglar.", "Dialog2")
    Dialog.AddOption("Nevermind.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla002.mp3", "", "nod", 1566897025, 4066912756, Spawn, 0)
    Dialog.AddDialog("A burglar?! Oh my! Where? In my inn? Have you called for the guard?")
    Dialog.AddOption("No. There's no burglar. I'm looking for a man with a leather cap.", "Dialog3")
    Dialog.AddOption("...Sure. I'll go call the guard.", "No")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/optional1/kaeso_polluvius/fprt_south/flaviametilla003.mp3", "", "nod", 577465053, 3798308392, Spawn, 0)
    Dialog.AddDialog("A leather cap? I don't sell them, but I know a man who has one. His name is Pythus. Maybe he'll sell you his. I saw him heading towards Crossroad out in the Commonlands, on the Deathfist Highway. I suppose he lives out there. If you see him, tell him I said hello!")
    Dialog.AddOption("Oh I will.")
    SetStepComplete(Spawn, Quest1, 2)
    Dialog.Start()
end