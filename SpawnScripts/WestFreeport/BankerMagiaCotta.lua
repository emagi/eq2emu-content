--[[
    Script Name    : SpawnScripts/WestFreeport/BankerMagiaCotta.lua
    Script Author  : Xiki
    Script Date    : 2025.02.19 11:02:31
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local Quest1 = 5983

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, Quest1)==3 then
        Dialog.New(NPC, Spawn)
	    Dialog.AddDialog("Greetings citizen. What services can the bank of Freeport offer you today? Are you looking to store some items, or take some from storage? Please let me know how best I can serve you.")
        Dialog.AddOption("I'm here to collect offerings for Clara Maius.", "Dialog1")
        Dialog.Start()
    else
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
    Dialog.AddDialog("Oh...Well then in that case, please take this and tell her I apologize for the delay and for her having to dispatch someone to collect! I am terribly sorry, please, I beg you. Help her understand that it was a simple delay!")
    Dialog.AddOption("Uh... are you alright?", "Dialog2")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Alright? Y-Yes... The Dismal Rage is not something to be taken lightly. Please, hurry back to Clara, any further delays could make matters for me even worse!")
    Dialog.AddOption("Right...", "UpdateQuest1")
    Dialog.Start()
    
end

function UpdateQuest1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    SetStepComplete(Spawn, Quest1, 3)
end