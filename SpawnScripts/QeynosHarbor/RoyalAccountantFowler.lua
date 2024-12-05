--[[
	Script Name	: SpawnScripts/QeynosHarbor/RoyalAccountantFowler.lua
	Script Purpose	: Royal Accountant Fowler <Guild Registrar>
	Script Author	: Cynnar
	Script Date	: 2020.04.12
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

function spawn(NPC)
	SetPlayerProximityFunction(NPC, 8, "InRange", "LeaveRange")
end

function respawn(NPC)
	spawn(NPC)
end

function InRange(NPC, Spawn)
	FaceTarget(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/royal_accountant_fowler/qey_harbor/100_soc_human_guild_registrar_fowler_hail_2f5a416.mp3", "Hello fellow citizen!  I'm the royal accountant for the city of Qeynos!  When you wish to form a guild within the city, you simply need to bring six members here and pay a nominal fee.", "bye", 852945802, 1195224665, Spawn)

end

function LeaveRange(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

		PlayFlavor(NPC, "voiceover/english/royal_accountant_fowler/qey_harbor/100_soc_human_guild_registrar_fowler_raid_a9dca99a.mp3", "", "", 788735708, 1422512353, Spawn)
		AddConversationOption(conversation, "Oh?  Let's see it.", "dlg_14_1")
	StartConversation(conversation, NPC, Spawn, "Welcome back! I've an urgent message for you from the castle.  You'd better read it immediately!")
end

function casted_on(NPC, Spawn, GuildName)
	local trimmedGuildName = string.gsub(GuildName, "^%s*(.-)%s*$", "%1")
	ClearChoice(Spawn, "create guild", 0)
	if trimmedGuildName == "create guild" then
		CreateChoiceWindow(NPC, Spawn, "Create Guild Name:", "OK", "create guild", "Cancel", "", 0, 1, 1, 41)
	else
		PlayFlavor(NPC, "voiceover/english/royal_accountant_fowler/qey_harbor/100_soc_human_guild_registrar_fowler_faction_fe6dd39.mp3", "Congratulations on your new guild " .. GuildName .. "!", "", 1209391067, 1707010448, Spawn)
	end
end

function dlg_14_1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	conversation = CreateConversation()

	PlayFlavor(NPC, "voiceover/english/royal_accountant_fowler/qey_harbor/100_soc_human_guild_registrar_fowler_raid_a9dca99a.mp3", "", "", 788735708, 1422512353, Spawn)
		AddConversationOption(conversation, "Oh?  Let's see it.", "dlg_14_2")
	StartConversation(conversation, NPC, Spawn, "Welcome back! I've an urgent message for you from the castle.  You'd better read it immediately!")
end

