--[[
    Script Name    : SpawnScripts/WestFreeport/CorporalSergiusMordanticus.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.17 08:01:36
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/NPCModule"
require "SpawnScripts/Generic/DialogModule"

local NoteForSergius = 5982

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    FreeportGuard(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if GetQuestStep(Spawn, NoteForSergius)==1 then
	    Dialog.New(NPC, Spawn)
        Dialog.AddDialog("What do you want citizen, can you not see that I am busy right now? If you have something to say spit it out or begone from my pressense. ")
        Dialog.AddOption("I have a note for you from Lucilla in South Freeport. She asked me to deliver this to you.")
        SetStepComplete(Spawn, NoteForSergius, 1)
    else
        PlayFlavor(NPC, "corporal_sergius_mordanticus/freeport_combined/quest/militia/corporal_sergius_mordanticus_001.mp3", "", "nod", 619502190, 3143033414, Spawn, 0)
	end
	
end

function respawn(NPC)
	spawn(NPC)
end