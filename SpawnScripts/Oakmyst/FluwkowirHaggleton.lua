--[[
	Script Name	: SpawnScripts/Oakmyst/FluwkowirHaggleton.lua
	Script Purpose	: Fluwkowir Haggleton 
	Script Author	: Scatman
	Script Date	: 2009.05.03
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local QUEST_FROM_JORN = 5220

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 10, "InRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fluwkowir_haggleton/qey_adv01_oakmyst_revamp/qst_fluwkowir_wrongway_52d5c902.mp3", "Ooops, I think I was going the other way.", "wince", 2064229810, 2868860860, Spawn)
    AddTimer(NPC,2500,"waypoints",1)
end
function waypoints(NPC)
	MovementLoopAddLocation(NPC, 1025.74, -0.17, -377.00, 5, 0)
	MovementLoopAddLocation(NPC, 1019.76, 1.17, -380.48, 5, 0)
	MovementLoopAddLocation(NPC, 1018.18, 2.25, -386.19, 6, 0)
	MovementLoopAddLocation(NPC, 1024.46, 4.02, -392.70, 6, 0)
	MovementLoopAddLocation(NPC, 1024.46, 4.02, -392.70, 5, 1,"DespawnHaggleton")
end

function DespawnHaggleton (NPC)
    Despawn(NPC)
    end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()
	
	if HasQuest(Spawn, QUEST_FROM_JORN) and GetQuestStep(Spawn, QUEST_FROM_JORN) == 1 then
		JustLeaveMeAlone(NPC, Spawn, conversation)	
	else
	end
end

function JustLeaveMeAlone(NPC, Spawn, conversation)
	AddConversationOption(conversation, "I need to talk to you.", "WhatAbout")
	StartConversation(conversation, NPC, Spawn, "Just leave me alone!")
end

function WhatAbout(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	AddConversationOption(conversation, "It's about Jorn Sorefoot, the barbarian you were playing cards with.", "MakeAttackable")
	StartConversation(conversation, NPC, Spawn, "Bah! What about? I'm very busy, I don't need to waste my time talking to the likes of you.")
end

function MakeAttackable(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/tutorial_revamp/fluwkowir_haggleton/qey_adv01_oakmyst_revamp/qst_fluwkowir_attack_104162fd.mp3", "Oh no you don't! I won't go down!", "", 260519136, 2014641631, Spawn)
	SpawnSet(NPC, "attackable", 1)
	SpawnSet(NPC, "show_level", 1)
	AddHate(Spawn, NPC, 100)
end

function death(NPC, Spawn)
	if HasQuest(Spawn, QUEST_FROM_JORN) then
		-- Flukowir's Satchel
		SummonItem(Player, 6389)
	end
end
