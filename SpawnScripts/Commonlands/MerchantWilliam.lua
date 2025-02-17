--[[
    Script Name    : SpawnScripts/Commonlands/MerchantWilliam.lua
    Script Author  : Premierio015
    Script Date    : 2021.01.03 08:01:33
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

local ShipmentForJabir = 5972

function spawn(NPC)

end

function hailed(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_william/commonlands/merchantwilliam000.mp3", "", "", 3295060090, 1575966932, Spawn)
    if GetQuestStep(Spawn, ShipmentForJabir)==1 then
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Buy here, buy now! Best good's you'll find in all the land!")
        Dialog.AddOption("I'm not interested right now.", "No")
        Dialog.AddOption("I'm actually here on behalf of Scribe Jabir...", "Dialog1")
        Dialog.Start()
    else
        FaceTarget(NPC, Spawn)
        Dialog.New(NPC, Spawn)
        Dialog.AddDialog("Buy here, buy now! Best good's you'll find in all the land!")
        Dialog.AddOption("I'm not interested right now.", "No")
        Dialog.Start()
    end
end

function respawn(NPC)

end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/merchant_william/commonlands/merchantwilliam001.mp3", "", "", 3025543949, 3462687378, Spawn)
    Dialog.AddDialog("What? Who's scribing materials? Oh, Scribe Jabir's orders. I, uh, I was going to get those as soon as possible, really. Oh, here they are! Please, take them back to Jabir and offer my deepest apologies.")
    Dialog.AddOption("I'll be sure to remind him you.. 'misplaced' them...", SetStepComplete(Spawn, ShipmentForJabir, 1))
    Dialog.Start()
end