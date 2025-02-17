--[[
    Script Name    : SpawnScripts/Stonestair/Kazar.lua
    Script Author  : Xiki
    Script Date    : 2025.02.12 11:02:19
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"



local KazarsFocus = 5948
local KazarAndTheVial = 5949

function spawn(NPC)
    ProvidesQuest(NPC, KazarsFocus)
    ProvidesQuest(NPC, KazarAndTheVial)
end

function hailed(NPC, Spawn)
	if not HasCompletedQuest(Spawn, KazarsFocus) and not HasQuest(Spawn, KazarsFocus) then
	    Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x1_initial.mp3", "", "nod", 1683894840, 1019084656, Spawn, 0)
	    Dialog.AddDialog("Well, at least you're smart enough to recognize my superior intellect. Perhaps you can handle a simple task, hm? Something that doesn't tax your acorn-sized blob of matter housed in your skull.")
        Dialog.AddOption("What acorn are you talking about? I don't see one", "Dialog1")
        Dialog.Start()
    elseif GetQuestStep(Spawn, KazarsFocus)==1 then
        Say(NPC,"Where is my Foci? Have you even spoken to Irian yet?")
    elseif GetQuestStep(Spawn, KazarsFocus)==2 then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Well? Where is my Foci? What did that time wasting woman say?!")
        Dialog.AddOption("She said its not ready and if you bother her again, she will intentionally alter it.", "FinishQuest1")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, KazarsFocus) and not HasQuest(Spawn, KazarAndTheVial) then
        Dialog.New(NPC, Spawn)
        PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x2_initial.mp3", "", "nod", 3588373003, 1521951318, Spawn, 0)
	    Dialog.AddDialog("Oh its you again... Actually, I'm happy to see you")
        Dialog.AddOption("What do you want now...", "Dialog2")
        Dialog.Start()
    elseif GetQuestStep(Spawn, KazarAndTheVial)==2 then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Have you returned with the vials?")
        Dialog.AddOption("I have some bad news...", "FinishQuest2")
        Dialog.Start()
        
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
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x1_initial2.mp3", "", "nod", 2998760779, 2240722844, Spawn, 0)
    Dialog.AddDialog("Your brain, you simpleton! I'm referring to your brain! Well, now I know what you're capable of, I need an errand run. And I promise, it doesn't require thinking.")
    Dialog.AddOption("Hey! Theres no need to be rude.. What do you want from me?", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, KazarsFocus)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x1_accept.mp3", "", "nod", 3413743643, 3370390704, Spawn, 0)
    Dialog.AddDialog("Why bother? You don't understand my superior intellect. Now go find Irian and tell her I want the foci. Ponder what I said about your brain on your way to see her. Just don't trip over your own feet while walking, you foolish imp. I know thinking and walking is a tough task for you, but at least try. Shoo!")
    Dialog.AddOption("Alright... I'll help you but your attitude is unwarranted.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    SetStepComplete(Spawn, KazarsFocus, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x1_finish.mp3", "", "nod", 781175433, 3654666661, Spawn, 0)
    Dialog.AddDialog("I can't wait! I will not suffer from this incompetence any further! If she does not have the foci completed by the end of this day, I'll feed her to these cats! As for you, take these coins. I doubt it will be long before you and this money are soon parted.")
    Dialog.AddOption("Someones having a bad day!")
    Dialog.Start()
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x2_initial2.mp3", "", "nod", 1516492108, 3740677314, Spawn, 0)
    Dialog.AddDialog("No, I just need someone to talk to an insane troll. You're perfect for the job. The two of you will understand each other on an intimate level. Now, instead of waiting for the foci, I'll go through that crazed troll.")
    Dialog.AddOption("I hope the best for you...Honest.", "AcceptedQuest2")
    Dialog.Start()
end


function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, KazarAndTheVial)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x2_accept.mp3", "", "nod", 3509162699, 2993886273, Spawn, 0)
    Dialog.AddDialog("Now, just in case it's too hard, I'll keep the instructions short. Go find Crantic the Troll. Get a vial of his secretions. Follow along. S-E-C-R-E-T-I-O-N-S. Then get back here immediately!")
    Dialog.AddOption("I might not remember all of that...")
    Dialog.Start()
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, KazarAndTheVial, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/tavernpatron/fprt_hood02/quests/kazar/kazar_x2_finish.mp3", "", "nod", 2505996590, 2895920286, Spawn, 0)
    Dialog.AddDialog("Enough! I'm sickened by the ineptitude of those around me. I will burn this city to the ground if I do not complete my ritual today. By my words, I swear, every man, woman, and child will die in burning agony if I do not complete it today. Those horrid Kerran will go first. Take this coin. Spend it now. You may not live much longer.")
    Dialog.AddOption("I should be going now.")
    Dialog.Start()
end