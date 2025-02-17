--[[
    Script Name    : SpawnScripts/Stonestair/GalenusVatia.lua
    Script Author  : Xiki
    Script Date    : 2025.02.11 10:02:13
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"


local EVICTION = 5946

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if HasQuest(Spawn, EVICTION) then
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("That damned Zahar, he's constantly increasing my rent knowing that I simply cannot afford it! Tell Zahar that I need more time to get him his rent money!")
        Dialog.AddOption("Zahar won't be pleased with this news. I'll let him know.")
        Dialog.Start()
        SetStepComplete(Spawn,EVICTION,1)
    end
end

function respawn(NPC)
	spawn(NPC)
end