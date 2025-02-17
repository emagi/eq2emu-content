--[[
    Script Name    : SpawnScripts/WestFreeport/BankerLusiusUlixes.lua
    Script Author  : Xiki
    Script Date    : 2025.02.16 06:02:54
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local NoteForLusius = 5971

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/lusius_ulixes/fprt_west/bnk_lusiusulixes.mp3", "", "nod", 1089349401, 3321470608, Spawn, 0)
	Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Hi. The Overlord provides for us all, doesn't he? I have a full range of banking services I can offer. I just need to know your guild affiliation first.")
    Dialog.AddOption("Uh.. Sure.. I actually am just here to deliver a message to you from Scribe Jabir..","Dialog1")
    Dialog.Start()
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
    PlayFlavor(NPC, "voiceover/english/lusius_ulixes/fprt_west/bnk_lusiusulixes005.mp3", "", "nod", 988625102, 3859913134, Spawn, 0)
    Dialog.AddDialog("Well hand it over and stop wasting my time!")
    Dialog.AddOption("Alright, alright! Relax! Sheesh... Here you go.")
    Dialog.Start()
    SetStepComplete(Spawn, NoteForLusius, 1)
end


