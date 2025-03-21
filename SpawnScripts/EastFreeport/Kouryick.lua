--[[
    Script Name    : SpawnScripts/EastFreeport/Kouryick.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 05:10:13
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5989

function spawn(NPC)
    ProvidesQuest(NPC, Quest1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if CanReceiveQuest(Spawn, Quest1) then
        Dialog3(NPC, Spawn)
    elseif GetQuestStep(Spawn, Quest1)==1 then
        Dialog6(NPC, Spawn)
    elseif GetQuestStep(Spawn, Quest1)==2 then
        Dialog7(NPC, Spawn)
    else
        Dialog1(NPC, Spawn)
    end
end


function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Hey!  If it isn't my ol' marauder killin' buddy!  Drink up!")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick012.mp3", 1785679252, 3662653439)
	Dialog.AddOption("Ok.")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A Seafury ship with some very personal cargo went down off the coast of the Nektulos forest.  I know those Nerius marauders were responsible! I just know it! If you get my cargo back for me, I'd be very grateful.  I'd do it, but I'm so busy.")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick001.mp3", 3246317258, 3403783500)
	Dialog.AddOption("I will retrieve the cargo.", "Dialog5")
	Dialog.AddOption("I don't want to help.")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What do you want?  Can't you see I want to be alone?  Wait.  Wait.  Maybe you can help me?")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick000.mp3", 1405975208, 3281446533)
	Dialog.AddOption("What can I do?", "Dialog2")
	Dialog.AddOption("No.")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh yes. Yes.  I knew you wouldn't let me down.  I could just tell that about you..about you.  Not like those useless marauders...untrustworthy pusses.  I'll never trust them again.")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick005.mp3", 3198731400, 4098557916)
	Dialog.AddOption("Goodbye.")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	OfferQuest(NPC, Spawn, Quest1)
	Dialog.AddDialog("Good!  Be careful.  Those marauders are sneaky.")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick002.mp3", 414993411, 1936857844)
	Dialog.AddOption("Goodbye.")
	Dialog.Start()
end

function Dialog6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("What are you doing here?  Where's that cargo?  Don't come back unless you have it.")
	Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick004.mp3", 1561165149, 1345431663)
	Dialog.AddOption("Okay.")
	Dialog.Start()
end

function Dialog7(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("What are you doing here?  Where's that cargo?  Don't come back unless you have it.")
    Dialog.AddVoiceover("voiceover/english/kouryick/fprt_east/qst_kouryick004.mp3", 1561165149, 1345431663)
    Dialog.AddOption("I have it right here, you wanted this manifest right?", "Dialog8")
    Dialog.Start()
end

function Dialog8(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("That's it! I cant believe you were *hick* able to recover it! I knew those cursed Nerius were responsible for this...Here take this as a reward, and many thanks to you long legs!")
    Dialog.AddOption("It was nothing, but hand over that reward.")
    SetStepComplete(Spawn, Quest1, 2)
    Dialog.Start()
end