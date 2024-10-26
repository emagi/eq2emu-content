--[[
    Script Name    : SpawnScripts/MontaasIsland/Bubbles.lua
    Script Author  : LordPazuzu/Montaa
    Script Date    : 2024.07.15 08:07:42
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"     -- Required at the start of any dialogue using this setup

local GobboQuest = 5940

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
    ProvidesQuest(NPC, GobboQuest)
end

function hailed(NPC, Spawn)
	Dialog1(NPC, Spawn)

end

-- Gobling Killing Quest Functions
function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Wanna Smash Goblins?")
	Dialog.AddOption("YES!!","DialogGobboKill")
	Dialog.AddOption("No, I prefer other methods.")
	Dialog.Start()
end

function DialogGobboKill(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Really?")
	Dialog.AddOption("Absolutely!!","OfferGobboQuest")
	Dialog.AddOption("Now that you say that, no.")
	Dialog.Start()
end

function OfferGobboQuest(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    OfferQuest(NPC, Spawn, GobboQuest)
end

-- END Gobling Killing Quest Functions

function respawn(NPC)
	spawn(NPC)
end