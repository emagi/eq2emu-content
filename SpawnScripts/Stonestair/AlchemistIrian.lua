--[[
    Script Name    : SpawnScripts/Stonestair/AlchemistIrian.lua
    Script Author  : Xiki
    Script Date    : 2025.02.12 11:02:22
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"


local KazarsFocus = 5948

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, KazarsFocus)==1 then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/merchant_irian/fprt_hood02/quests/kazar/irian_kazar_x1_initial.mp3", "", "nod", 1072441050, 4262087506, Spawn, 0)
	    Dialog.AddDialog("Tell him it hasn't reached true fulmination. That impatient fool must wait. His transcendent ritual cannot achieve its intended potential if the foci is flawed. If he sends one more person to get it, tell him I will flaw it intentionally. Understand?")
        Dialog.AddOption("I do apologize, I will be sure to inform him.")
        Dialog.Start()
        SetStepComplete(Spawn, KazarsFocus, 1)
    else
        PlayFlavor(NPC, "voiceover/english/merchant_irian/fprt_hood02/mer_merchant_irian.mp3", "Take a look at my wares! I'm sure you'll find something useful. Hm?", "nod", 3784948478, 4065569350, Spawn, 0)

    end
end

function respawn(NPC)
	spawn(NPC)
end