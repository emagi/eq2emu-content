--[[
    Script Name    : SpawnScripts/Stonestair/NosnoTheNaysayer.lua
    Script Author  : Xiki
    Script Date    : 2025.02.12 10:02:48
    Script Purpose : Offer quest Nosno's Prophecy
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local NosnosProphecy = 5950

function spawn(NPC)
    ProvidesQuest(NPC, NosnosProphecy)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")		
end

function InRange(NPC,Spawn)
    RandomGreeting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    if HasCompletedQuest(Spawn, NosnosProphecy) then
        Say(NPC, "Thank you for trying to help me with my prophecy.")
    elseif GetQuestStep(Spawn, NosnosProphecy) == 1 then
        Say(NPC, "Please, go speak with Miala and see if she'll listen to my words.")
    elseif GetQuestStep(Spawn, NosnosProphecy) == 3 then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Have you spoken to and recruited the women?")
        Dialog.AddOption("I spoke with them but the are not interested in even hearing about it.", "FinishQuest1")
        Dialog.Start()
    else
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Speak with me adventurer.. I have grave news to spread!")
        Dialog.AddOption("What're you rambling about?", "Dialog1")
        Dialog.Start()
    end
end

function respawn(NPC)
    spawn(NPC)
end

function RandomGreeting(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/nosno_the_naysayer/fprt_hood02/20_streetmadprophet_callout_60872fb7.mp3", "The end is near. Flee while you can. The shattering was only the beginning. Freeport will not save us again. The hills! Run to the hills for safety!", "beckon", 2858549713, 815620679, Spawn, 0)
end

--------------------------------------------------------------------------------------------------------------------------------
--					QUEST 1
--------------------------------------------------------------------------------------------------------------------------------

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/madprophet/fprt_hood02/quests/nosnothenaysayer/nosno_x1_initial.mp3", "", "beckon", 1778733410, 1526835576, Spawn, 0)
    Dialog.AddDialog("Fire! Shall the world...The world shall split asunder. Fire shall boil up from the earth. And ice will shatter the great walls around us. We have the chance to escape. Are you a believer, brother?")
    Dialog.AddOption("I dont know, but I will entertain your ideas.. What do you want from me?", "AcceptedQuest1")
    Dialog.Start()
end

function AcceptedQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, NosnosProphecy)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/madprophet/fprt_hood02/quests/nosnothenaysayer/nosno_x1_accept.mp3", "", "beckon", 1875792805, 657674668, Spawn, 0)
    Dialog.AddDialog("Then bring these written words to all the female Kerrin you find. We need the presence of women in the hills if we wish to survive. The male's scoff, friend. Do not waste these words on them. Give these to the women. Only then shall the fates spare us.")
    Dialog.AddOption("I can at least tell them for you.. No harm in that, but a bit odd.")
    Dialog.Start()
end

function FinishQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/madprophet/fprt_hood02/quests/nosnothenaysayer/nosno_x1_finish.mp3", "", "laugh", 3416497944, 1739679131, Spawn, 0)
    Dialog.AddDialog("For now, they won't. Not until the destruction happens. Then, then they will come to me. And I will be the new king of Acheron. I will sire every new litter. Yes, yes. The more believers, the better. Thank you.")
    Dialog.AddOption("You are a bit odd, but thanks for the reward!")
    Dialog.Start()
    SetStepComplete(Spawn, NosnosProphecy, 3)
end