--[[
    Script Name    : SpawnScripts/Commonlands/MerchantValary.lua
    Script Author  : Premierio015
    Script Date    : 2021.05.24 09:05:16
    Script Purpose : 
                   : 
--]]

local MessageForValary = 5981

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	local conversation = CreateConversation()
	if GetQuestStep(Spawn, MessageForValary)==1 then
	   AddConversationOption(conversation, "I actually have a letter for you from Lucilla in South Freeport.", "Dialog1")
	end
	AddConversationOption(conversation, "I might take a look at what you are selling.")
	StartConversation(conversation, NPC, Spawn, "My wares are the finest in the land. Won't you look?")
end

function respawn(NPC)
	spawn(NPC)
end

function Dialog1(NPC, Spawn)
    local conversation2 = CreateConversation()
    AddConversationOption(conversation2, "No problem, glad to help.")
    StartConversation(conversation2, NPC, Spawn, "Oh great! I have been waiting to hear back from her regarding my latest shipment. Thank you and take this as a reward for your service to us both.")
    SetStepComplete(Spawn, MessageForValary, 1)
end