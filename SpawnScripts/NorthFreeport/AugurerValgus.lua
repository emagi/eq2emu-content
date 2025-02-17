--[[
    Script Name    : SpawnScripts/NorthFreeport/AugurerValgus.lua
    Script Author  : Dorbin
    Script Date    : 2022.06.19 01:06:26
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"


local TheMarinersRhyme = 5961
local MessageForAnessa = 5962
local GatheringBrittleBones = 5960

function spawn(NPC)
    ProvidesQuest(NPC, TheMarinersRhyme)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, TheMarinersRhyme) and not HasCompletedQuest(Spawn, TheMarinersRhyme) then
	    Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/augurer_valgus/fprt_north/quests/valgus/valgus_x1_initial.mp3", "", "nod", 4108873473, 2332808358, Spawn, 0)
	    Dialog.AddDialog("I can see you have many questions. Time and service to this temple may prove your worth to our cause. That worth may someday bring you closer to your answers.")
	    Dialog.AddOption("How could I be of service to the temple?", "Dialog1")
	    Dialog.AddOption("Sorry but I have all the answers I need.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, TheMarinersRhyme)==2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you returned spoken with Javvy?")
	    Dialog.AddOption("Yes I spoke with him.", "FinishQuest1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, TheMarinersRhyme) and not HasQuest(Spawn, MessageForAnessa) and not HasCompletedQuest(Spawn, MessageForAnessa) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Speak with me, I have another task for you adventurer.")
	    Dialog.AddOption("What service can I offer the Dismal Rage?", "Dialog2")
	    Dialog.AddOption("Sorry I dont have time right now.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, MessageForAnessa)==2 then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you need from me now, adventurer.")
	    Dialog.AddOption("I have delivered the letter to Anessa.", "FinishQuest2")
	    Dialog.AddOption("Nothing, sorry.", "No")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, TheMarinersRhyme) and HasCompletedQuest(Spawn, MessageForAnessa) and not HasCompletedQuest(Spawn, GatheringBrittleBones) and not HasQuest(Spawn, GatheringBrittleBones) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("If you are prepared, I have another task for you.")
	    Dialog.AddOption("What can I offer the temple now?", "Dialog4")
	    Dialog.AddOption("Nothing, sorry.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, GatheringBrittleBones)==2 then
        FinishQuest3(NPC, Spawn)
	else
		PlayFlavor(NPC, "voiceover/english/augurer_valgus/fprt_north/qst_valgus007.mp3", "Your strength is the heart of Freeport, citizen.", "", 1943767952, 2094201949, Spawn, 0)
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
    PlayFlavor(NPC, "voiceover/english/augurer_valgus/fprt_north/quests/valgus/valgus_x1_initial2.mp3", "", "ponder", 4040643094, 3129471888, Spawn, 0)
    Dialog.AddDialog("You have come at a good time. I need someone to run an errand. It seems as though a seafaring member of this temple was to deliver an ancient mariner's rhyme on a scroll. His name is Javvy, and his love of ale has kept him from delivering this scroll.")
    Dialog.AddOption("I can see out this 'Javvy' for you and return the scroll for you.", "AcceptedQuest1")
    Dialog.AddOption("Sorry, I do not have time for errands", "No")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, TheMarinersRhyme)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/augurer_valgus/fprt_north/quests/valgus/valgus_x1_accept.mp3", "", "ponder", 3437184626, 978409066, Spawn, 0)
    Dialog.AddDialog("Very good of you, citizen. Your service may seem small, but small service leads you closer to our trust and the reclaiming of lost faith.")
    Dialog.AddOption("Sure, I will return once I have spoken to Javvy.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, TheMarinersRhyme, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/augurer_valgus/fprt_north/quests/valgus/valgus_x1_finish.mp3", "", "ponder", 2542837504, 2419464748, Spawn, 0)
    Dialog.AddDialog("So Javvy has lost faith. His soul belongs to us. He cannot escape from the dismal rage. We shall deal with his treachery. As for you, we thank you. We shall reserve a place for your soul within our temple.")
    Dialog.AddOption("I was happy to help, money is a strong motivator!")
    Dialog.Start()
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I need you to go and find a member of the Dismal Rage, and deliver this message to her. Her name is Anessa and you can most likely find her at a pub somewhere. She will be dispatched to deal with our friend Javvy.")
    Dialog.AddOption("Sure, but where should I look?", "Dialog3")
    Dialog.AddOption("Sorry but I cant right now.", "No")
    Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("You will have most luck checking the pubs as I mentioned, I would start in West Freeport as I know she has family ties in that district of the city.")
    Dialog.AddOption("Okay. I will return.", "AcceptedQuest2")
    Dialog.Start()
    
end

function AcceptedQuest2(NPC, Spawn)
    OfferQuest(NPC, Spawn, MessageForAnessa)
end

function FinishQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Very good, you are proving to be most useful. Here, take this as a reward and speak to me again if you would like some more work.")
    Dialog.AddOption("Thank you Valgus.")
    Dialog.Start()
    SetStepComplete(Spawn, MessageForAnessa, 2)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("I need you to head out to the Commonlands, and seek out some Brittle Skeletons. You can find them near the cemetary and wailing caves. If the Academy is behind this, we should be able to tell with a sample of the bone chips.")
    Dialog.AddOption("And where do I come in?", "Dialog5")
    Dialog.AddOption("On second thought..","No")
    Dialog.Start()
end

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Once you have slain the brittle skeletons and are able to collect some samples, hurry back to me with them so we can begin analyzing them. We need to find out who is behind this necromancy outbreak.")
    Dialog.AddOption("I'll do what I can.", "AcceptedQuest3")
    Dialog.AddOption("I think I'll come back another time.", "No")
    Dialog.Start()
    
end

function AcceptedQuest3(NPC, Spawn)
    OfferQuest(NPC, Spawn, GatheringBrittleBones)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Travel safe adventurer. We have no clue what could be happening or the extent of the necromancers activities and the impact they could be having out side the city walls.")
    Dialog.AddOption("I will.")
    Dialog.Start()
end

function FinishQuest3(NPC, Spawn)
    SetStepComplete(Spawn, GatheringBrittleBones, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("These samples simply will not do! Unfortunately they seem to have withered and there appears to be nothing useable or recoverable from them that would be helpful to us.. What took so long?")
    Dialog.AddOption("I... I am sorry...")
    Dialog.Start()
end