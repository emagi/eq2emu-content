--[[
    Script Name    : SpawnScripts/EastFreeport/JulieDanerous.lua
    Script Author  : Xiki
    Script Date    : 2025.02.25 11:02:11
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5988
local Quest2 = 5991


function spawn(NPC)
    ProvidesQuest(NPC, Spawn, Quest1)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if CanReceiveQuest(Spawn, Quest1)then
	   Dialog.New(NPC, Spawn)
	   PlayFlavor(NPC, "voiceover/english/julie_danerous/fprt_east/100_questjuliedanerou_multhail1_6195b062.mp3", "", "nod", 3623154907, 3385551552, Spawn, 0)
	   Dialog.AddDialog("I'll offer you one warning. Watch your step and your purse in Freeport. This city is full of questionable characters who would love to relieve you of your coin and your life. Now be on your way.")
	   Dialog.AddOption("I actually was hoping that you had some work for an adventurer like myself?", "Dialog1")
	   Dialog.AddOption("Thanks for the advice, I best be going now..", "No")
	   Dialog.Start()
	elseif GetQuestStep(Spawn, Quest1)==2 then
	   Dialog.New(NPC, Spawn)
	   Dialog.AddDialog("Have you managed to deal with that Orcish rabble in the Sprawl?")
	   Dialog.AddOption("Yes, I have even brought you proof of the 10 orcs I killed to help thin their ranks.", "FinishQuest1")
	   Dialog.Start()
	elseif HasCompletedQuest(Spawn, Quest1) and CanReceiveQuest(Spawn, Quest2) then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Ah, it's you again. Still up for some more work? If so, I have another simple task for you. This one will be easier for you. I simply need someone to deliver a letter for me, are you up to it?")
        Dialog.AddOption("Sure I could do that, what do you need me to deliver and to who?", "Dialog3")
        Dialog.AddOption("I need to get going.", "No")
        Dialog.Start()
	else
	   Say(NPC, "Begone now. I have nothing for you.")
	end
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
    Dialog.AddDialog("Actually now that you mention it, I could use a hand with those insufferable Orcs who have begun to take over the Sprawl... They've been becoming increasingly more and more brazen with their actions lately...How about it, would you like to help me with this Orc gang we are having a problem with?")
    Dialog.AddOption("Sure, nothings better then smashing orc heads!", "Dialog2")
    Dialog.AddOption("On second thought, I'm busy currently.", "No")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great to hear. There is a gang by the name of the Giantslayer's who have been causing quite the stir over in the Sprawl.. My sources have told me the orcish gang numbers have been steadily increasing and they're starting to become more then just a slight pest for the city guard to handle. Do me a favor a head over to the Sprawl and help the gaurds there out with this band of orc thugs will you?")
    Dialog.AddOption("And what's in it for me?", "AcceptedQuest1")
    Dialog.AddOption("You mean to tell me the guards cant handle them? How can I?! I'll pass...", "No")
    Dialog.Start()
    
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("The adventure and blood of orc's spilt on your hands! If thats not good enough for you however... I can offer you some coin in exchange for your success. Head to the Sprawl and slay ten of the Giantslayer gang members and return to me once you have completed this task.")
    Dialog.AddOption("I will return.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, Quest1, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great! I'm shocked that you made it back in one piece let alone successfully. I guess I shouldn't have under estimated you... Here take this for your troubles, and good work.")
    Dialog.AddOption("Thanks I guess..?")
    Dialog.Start()
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great news. I simply need you to take this letter to Mallius Otho, you can find him in West Freeport. Deliver this letter to him for me.")
    Dialog.AddOption("Consider it done.", "AcceptedQuest2")
    Dialog.Start()
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest2)
end