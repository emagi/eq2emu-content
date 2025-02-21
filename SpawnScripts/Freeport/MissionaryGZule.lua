--[[
    Script Name    : SpawnScripts/Freeport/MissionaryGZule.lua
    Script Author  : Premierio015
    Script Date    : 2020.07.15 06:07:47
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local RustySymbolOfMarr = 584
local DeathCert = 5872

local GraverobSpoils = 5970
local OfferingsOfTheFaithful = 5983

function spawn(NPC)
ProvidesQuest(NPC,DeathCert)
ProvidesQuest(NPC,GraverobSpoils)
end

function hailed(NPC, Spawn)
 if GetFactionAmount(Spawn,12)<0 then
     PlayFlavor(NPC,"","","cutthroat",0,0,Spawn)
 elseif HasCompletedQuest(Spawn, DeathCert) and CanReceiveQuest(Spawn, GraverobSpoils) then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("What do you want from me now?")
        Dialog.AddOption("I want another task something with adventure, not being your errand runner.", "Dialog4")
        Dialog.Start()
 elseif GetQuestStep(Spawn, GraverobSpoils)==2 then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Have you returned with the spoils of your victory?")
        Dialog.AddOption("Yeah and you have been just wasting my time with these 'Tasks'.", "FinishQuest2")
        Dialog.Start()
 elseif GetQuestStep(Spawn, OfferingsOfTheFaithful)==1 then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("What do you want citizen, can you not see that I am far to busy for the likes of you?")
        Dialog.AddOption("I'm here to collect offerings for the Dismal Rage, on behalf of Clara Maius.", "Dialog5")
        Dialog.AddOption("On second thought, I dont need anything.", "No")
        Dialog.Start()
 else
     Dialog1(NPC,Spawn)
     
end
end


function respawn(NPC)

end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("You better watch your step if you choose to enter the Temple of War. I would suspect the greeting for a person like yourself would be a dagger in the back rather than a handshake.")
	Dialog.AddVoiceover("voiceover/english/missionary_g_zule/fprt_north/qst_gzule.mp3", 1791825577, 3485372568)
	Dialog.AddOption("Is that why you are afraid to go in yourself, hmm? ", "Dialog2")
    if HasQuest(Spawn, RustySymbolOfMarr) then
    Dialog.AddOption("I found something that may be of interest to you.", "quest")
    end
    if CanReceiveQuest(Spawn,DeathCert) then
    Dialog.AddOption("Give me a task worthy of proving myself then!","Offer")
    end
    Dialog.AddOption("I think I can handle myself just fine, thanks.")
	Dialog.Start()
end

function Offer(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    OfferQuest(NPC,Spawn,DeathCert)
end

function Dialog2(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("It is my station to be here, you worm.  Soon enough I'll take my place inside the temple.")
	Dialog.AddVoiceover("voiceover/english/missionary_g_zule/fprt_north/qst_gzule001.mp3", 1035950997, 818649186)
	Dialog.AddOption("What's the problem?  You haven't done enough sacrificing to sit with the big boys yet?", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I'll have you know that I have done all the sacrificing I need to do, lucky for your worthless carcass.  I only have to find a symbol of the old paladins to desecrate to fulfill my advancement.")
    PlayFlavor(NPC, "", "", "glare", 0, 0, Spawn)
	Dialog.AddVoiceover("voiceover/english/missionary_g_zule/fprt_north/qst_gzule002.mp3", 2865163916, 2862700718)
	Dialog.AddOption("For some reason I see you standing here for a while.")
	Dialog.Start()
end



function quest(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    Dialog.AddDialog( "I could take the symbol of Marr off your hands.  You certainly don't want to carry that thing openly around here.  I won't even charge the usual fee to dispose of it.")
	Dialog.AddVoiceover("voiceover/english/missionary_g_zule/fprt_north/qst_gzule003.mp3", 212622032, 1987675547)
    Dialog.AddOption("You won't charge me?  How about you pay me for it.  I know you need this.", "complete")
    Dialog.Start()
end

function complete(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "", "", "grumble", 0, 0, Spawn)
    Dialog.AddDialog( "Fine, here is a small pouch of coins for the symbol.  You know it's worthless to you anyway.")
	Dialog.AddVoiceover("voiceover/english/missionary_g_zule/fprt_north/qst_gzule004.mp3", 2506235491, 1587607096)
    Dialog.AddOption("A pleasure doing business with you.")
    Dialog.Start()
  SetStepComplete(Spawn, RustySymbolOfMarr, 1)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 2
--------------------------------------------------------------------------------------------------------------------------------
function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule007.mp3", "", "nod", 1887518719, 1521313683, Spawn, 0)
	Dialog.AddDialog("Adventure, you say? Well, let's see what you're made of. Grave robbers are desecrating our cemetery for the bones of the recently deceased. You must stop these scoundrels' looting and return with their spoils. If you can't complete this menial task, don't bother returning.")
    Dialog.AddOption("I shall return once I have retrieved the spoils from the Graverobbers.", "AcceptedQuest2")
    Dialog.Start()
end

function AcceptedQuest2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, GraverobSpoils)
end

function FinishQuest2(NPC, Spawn)
    SetStepComplete(Spawn, GraverobSpoils, 2)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/missionary_g_zule/fprt_north/qst_gzule008.mp3", "", "curse", 515108139, 969887952, Spawn, 0)
    Say(NPC, "You insolent worm! You dare to address me in this manner? Relieve me of the bones you recovered and leave. Now, take this reward and go without my gratitude.")
    Dialog.Start()
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 3
--------------------------------------------------------------------------------------------------------------------------------

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Great, that wretched hag... Unfit for this city.. And how she even has the nerve to send couriers on her behalf to collect for the Dismal Rage?! How dare she!")
    Dialog.AddOption("I'm no courier... And I offered my help, just hand over the offering so we can move on..", "Dialog6")
    Dialog.AddOption("You can keep your offering then, I'm sure the Dismal Rage will be pleased to hear that.", "No")
    Dialog.Start()
end

function Dialog6(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("How dare you, do you even understand who I am whelp? However, the last thing I need right now is to give the Dismal Rage more reason to breathe down my neck... Take this and begone... And tell Clara that her days are limited...")
    Dialog.AddOption("I'll be sure to do that.", "UpdateQuest3")
    Dialog.Start()
    
end

function UpdateQuest3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, OfferingsOfTheFaithful, 1)
end

