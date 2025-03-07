--[[
    Script Name    : SpawnScripts/EastFreeport/AnniaVelithe.lua
    Script Author  : Xiki
    Script Date    : 2025.02.25 11:02:18
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5990

function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/annia_velithe/fprt_east/100_qst_voluble_annia_velithe_multhail2_d475daca.mp3", "", "nod", 2434412981, 4088599160, Spawn, 0)
	Dialog.New(NPC, Spawn)
    Dialog.AddDialog("What do you need? I'm working on a new song. I have no time to entertain and amuse you. If you have business to attend to, be swift. Otherwise, go bug someone else.")
    if CanReceiveQuest(Spawn, Quest1)then
        Dialog.AddOption("I was actually looking for some work, perhaps I could help you if there's something you need doing.", "Dialog1")
    end
    Dialog.AddOption("Sorry for bothering you.", "No")
    Dialog.Start()
end

function respawn(NPC)
	spawn(NPC)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Actually, now that you mention I could use a hand with a simple task. I need you to take this letter to a good friend of mine Boomba, you can find them at the gates to the Commonlands over in West Freeport.. This letter is quite imporant so please ensure it reaches my friend.")
    Dialog.AddOption("That doesn't sound very difficult. I could do that for you, as long as payment is in order.", "Dialog2")
    Dialog.AddOption("Sorry but I have other things to do.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great, take this letter to Boomba, they will reward you on my behalf for your time. Thank you adventurer, now if you dont mind I must return to writing this song.")
    Dialog.AddOption("It will be done.", "AcceptedQuest1")
    Dialog.Start()
    
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)

end