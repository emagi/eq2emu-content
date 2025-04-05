--[[
	Script Name	: SpawnScripts/PeatBog/RujiarmoOolamein.lua
	Script Purpose	: Rujiarmo Oolamein 
	Script Author	: Image
	Script Date	: 2020.05.08
	Script Notes	: n/a
	
--]]

local QUEST_1 = 517

function spawn(NPC)
	ProvidesQuest(NPC, QUEST_1)
end


function respawn(NPC)
	spawn(NPC)
end


function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if GetRace(Spawn) ~= 3 then -- if not erudite
    	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/qst_rujiarmo_notonquest_b6d4b896.mp3", "The Peat Bog is not generally a welcoming place.", "", 2352765409, 3955567131, Spawn)		
    elseif HasCompletedQuest(Spawn, QUEST_1) == false then
    	Dialog.New(NPC, Spawn)
    	Dialog.AddDialog("The Peat Bog is not generally a welcoming place.")
    	Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo000.mp3", 1802625907, 3153057783)
    	Dialog.AddOption("Not generally?", "Option1")
    	Dialog.Start()
    elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) <= 4 then
    	Dialog.New(NPC, Spawn)
    	Dialog.AddDialog("Have you gotten the information?")
        Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo007.mp3", 1706851290, 1706851290)
        if GetQuestStep(Spawn, QUEST_1) == 4 then -- progress quest
        	Dialog.AddOption("Yes, here it is.", "InvestigateComplete")
        else
        	Dialog.AddOption("Not yet.")
        end
        Dialog.Start() 
    elseif HasQuest(Spawn, QUEST_1) and GetQuestStep(Spawn, QUEST_1) == 5 then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/qst_rujiarmo_dawson_47e98f95.mp3", "I am sure Lieutenant Dawson could use that information.", "", 1394301777, 3746686053, Spawn)
    elseif HasCompletedQuest(Spawn, QUEST_1) then
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/qst_rujiarmo_done_7210d4a5.mp3", "I do not consider our time working together to be poor in quality, friend.", "", 1057699573, 1797137658, Spawn)
    else
        PlayFlavor(NPC, "voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/qst_rujiarmo_notonquest_b6d4b896.mp3", "The Peat Bog is not generally a welcoming place.", "", 2352765409, 3955567131, Spawn)
    end
end

function Option1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("The Peat Bog welcomes those who see it for what it is, and recognize what it provides. This place is not attractive, as such it is a good place to go if you want to be left alone. To an Erudite, the Peat Bog may be a very welcoming place.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo001.mp3", 3882012002, 1679672909)
	Dialog.AddOption("Are you here to avoid people?w", "Option2")
	Dialog.Start()
end

function Option2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("People, forces, factions... I am here to avoid many things. Some of these things have followed me here, some of the guards around here for example. I have a habit of attracting attention, unfortunately. It makes work here slightly more difficult.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo002.mp3", 2996739129, 460757401)
	Dialog.AddOption("What work?", "Option3")
	Dialog.Start()
end

function Option3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Indeed. I am working to help the Qeynos Guard, ironically enough. Things are happening here in the Peat Bog that they don't understand, that nobody understands. I consider it a worthy cause, and so I am doing my part to help find out what is happening.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo003.mp3", 2646171136, 1251951312)
	Dialog.AddOption("So why are the guards following you?", "Option4")
	Dialog.Start()
end

function Option4(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My methods of information gathering are suspect, I am guilty by association. I have friends who have friends who have friends who know people who may have been seen in the company of a Freeportian or two. So while I do wish to help the Qeynos Guard discover what is going on here in the Peat Bog I do not wish to put any of my friends or their friends at risk.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo004.mp3", 4134681553, 1544242965)
	Dialog.AddOption("Perhaps I can help.", "Option5")
	Dialog.Start()
end

function Option5(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You can indeed. You are insignificant enough in the eyes of the guards to ignore, that is an advantage. My contact doesn't know what I look like and you can go in my stead, how do you feel about that?")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo005.mp3", 1179531688, 139006557)
	Dialog.AddOption("I can do that.", "Option6")
	Dialog.AddOption("Not right now.")
	Dialog.Start()
end

function Option6(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My contact is only a short way in. If you follow this path down to the point where the wall breaks away from the path's left side, my contact will be near the tree to the left. Speak the phrase \"Ret katha est al inum,\" from there everything else will fall into place.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo006.mp3", 2889561745, 956348510)
	Dialog.AddOption("What does that mean?", "Option7")
	Dialog.Start()
end

function Option7(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It means \"It all cancels out.\"")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo006a.mp3", 802454645, 746497075)
	Dialog.AddOption("I see. I will return.", "AcceptQuest")
	Dialog.Start()
end

function Option8(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	OfferQuest(NPC, Spawn, QUEST_1)
end

function InvestigateComplete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Good. I will read it over. Hmm, interesting. Tell me, did you run into any trouble while getting this information?")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo008.mp3", 1732298329, 3695876694)
	Dialog.AddOption("Not really.", "InvestigateComplete_Easy")
	Dialog.AddOption("I did, actually.", "InvestigateComplete_Hard")
	Dialog.Start()
end

function InvestigateComplete_Hard(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("A pity. Hopefully you weren't foolish enough to let the trouble pass without learning from it. Hm, this is very interesting indeed. Your timing here was rather fortunate, it seems.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo009.mp3", 1038549186, 4197244033)
	Dialog.AddOption("Why is that?", "InvestigateComplete_Hard")
	Dialog.Start()
end

function InvestigateComplete_Easy(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("My, my! This is exciting news. You should take this to the Qeynos Guard, they will be quite interested in reading what it has to say. Lieutenant Dawson is in charge around here, you can find her at the gates to Nettleville Hovel. She will be able to make use of this information. Thank you, Ugugal. You have helped a number of people in a number of ways. You will not soon be forgotten.")
    Dialog.AddVoiceover("voiceover/english/tutorial_revamp/rujiarmo_oolamein/qey_adv04_bog/quests/rujiarmo/rujiarmo010.mp3", 4113504491, 4012770447)
	Dialog.AddOption("You are welcome.")
	SetStepComplete(Spawn, QUEST_1, 5)
	Dialog.Start()
end
