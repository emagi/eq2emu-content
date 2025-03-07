--[[
    Script Name    : SpawnScripts/WestFreeport/Boomba.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.21 09:10:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5990

function spawn(NPC)

end

function hailed(NPC, Spawn)
Dialog3(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'm from a proud line of Boombas. My greatest grand-sire sold pickles at this spot more than five hundreds years ago. Every generation of Boomba has given their firstborn the name of Boomba to honor our greatest ancestor. When I die, my daughter, Boomba, will take my place. I'm tired of talking. Purchase a pickle or leave!")
	Dialog.AddVoiceover("voiceover/english/boomba/fprt_west/quests/boomba/boomba_flavor2.mp3", 2578978332, 1737212586)
    PlayFlavor(NPC,"","","sniff",0,0,Spawn)
	Dialog.AddOption("I think I'll take a look!")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You dare  insult me! Thank your gods a guard is over there. Once he stops looking at us, I plan on cleaving your skull in two.")
	Dialog.AddVoiceover("voiceover/english/boomba/fprt_west/quests/boomba/boomba_flavor.mp3", 542505696, 1791956842)
    PlayFlavor(NPC,"","","shakefist",0,0,Spawn)
	Dialog.AddOption("Then I'll use this chance to get out of here.")
	Dialog.AddOption("I meant no offense, Boomba. I was just curious. How long have you been selling pickles?", "Dialog1")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I am Boomba, and I sell pickles.  If you want to talk, find a Teir'Dal.")
	Dialog.AddVoiceover("voiceover/english/boomba/fprt_west/mer_boomba.mp3", 3778038268, 407693409)
	Dialog.AddOption("Fine. I'll take a look at your pickles, I guess.")
	Dialog.AddOption("What's an Ogre selling pickles for? Shouldn't you be destroying something?", "Dialog2")
	if HasQuest(Spawn, Quest1) and GetQuestStep(Spawn, Quest1)==1 then
	    Dialog.AddOption("I actually have a letter for you from Annia Velithe", "Dialog4")
	end
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("From Annia? Have it over to me right away before I take it from you! I have been waitin' for her response for long enough already, puny human!")
    Dialog.AddOption("Sheesh, sure here you go. Calm down big guy!", "Dialog5")
    Dialog.Start()
end

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("What?! She want's me to pay you!? Damned humans! Fine, take this and get out of my sight.")
    Dialog.AddOption("Thanks for that...")
    SetStepComplete(Spawn, Quest1, 1)
    Dialog.Start()
end
