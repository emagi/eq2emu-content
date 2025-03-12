--[[
    Script Name    : SpawnScripts/EastFreeport/SlaughtergrotttheVigilant.lua
    Script Author  : Neveruary
    Script Date    : 2022.07.22 11:07:47
    Script Purpose : 
                   : 
--]]

-- declare variables
local InSearchOfTheFeerrott = 5637

function spawn(NPC) -- declare spawn behavior. offer quest
	ProvidesQuest(NPC, InSearchOfTheFeerrott)
	AddTimer(NPC, 6000, "waypoints")
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
		AddConversationOption(conversation, "Go on.", "GoOn")
		AddConversationOption(conversation, "Sorry, I'm not.")
		StartConversation(conversation, NPC, Spawn, "I need someone adept in adventuring. Are you the one? Are you willing to aid in the discovery of a land lost since the Shattering?")
	        if not HasCompletedQuest(Spawn, InSearchOfTheFeerrott) and HasQuest(Spawn, InSearchOfTheFeerrott) then
        		AddConversationOption(conversation, "Okay, okay.")
		        StartConversation(conversation, NPC, Spawn, "Do as you are told, or I will crush your skull and the secrets it holds!")
		    end
end

function GoOn(NPC, Spawn)
	AddConversationOption(conversation, "Understood.", "findFeerrott")
	AddConversationOption(conversation, "Don't bother me anymore.")
	StartConversation(conversation, NPC, Spawn, "You're interested. That's good. What we discuss from here out is secret and not to be discussed with outsiders. Is this understood?")
end

function findFeerrott(NPC, Spawn)
	AddConversationOption(conversation, "Go on.", "GoOn2")
	AddConversationOption(conversation, "I'm done with this. Goodbye.")
	StartConversation(conversation, NPC, Spawn, "You're about to help me find the Feerrott. This is no small effort, and you may need to gather a small group of adventurers to aid you.")
end

function GoOn2(NPC, Spawn)
	AddConversationOption(conversation, "I got it.", "offer")
	StartConversation(conversation, NPC, Spawn, "Long ago, the orcs at Zek allied themselves with the Rallosian army. The orcs are still in posssession of much of the Rallosian army's equipment that was left their empire fell. The maps or writings leading to the location of the Feerrott must be amongst them. Go to the Orcish Wastes and find this information. Got it?")
end

function offer(NPC, Spawn)
    OfferQuest(NPC, Spawn, InSearchOfTheFeerrott)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -300.77, -56.07, -75.09, 2, 0)
	MovementLoopAddLocation(NPC, -298.71, -56.07, -75.93, 2, 0)
	MovementLoopAddLocation(NPC, -213.12, -56.07, -75.51, 2, 90)
	MovementLoopAddLocation(NPC, -213.12, -56.07, -75.51, 2, 0)
	MovementLoopAddLocation(NPC, -247.61, -56.07, -74.35, 2, 0)
	MovementLoopAddLocation(NPC, -249.41, -56.07, -72.33, 2, 0)
	MovementLoopAddLocation(NPC, -249.41, -56.07, -72.33, 2, 90)
	MovementLoopAddLocation(NPC, -250.47, -56.07, -73.81, 2, 0)
	MovementLoopAddLocation(NPC, -300.77, -56.07, -75.09, 2, 0)
	MovementLoopAddLocation(NPC, -300.77, -56.07, -75.09, 2, 90)
end