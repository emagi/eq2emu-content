--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/smallsackofcrystalizedmana.lua
    Script Author  : dorbin
    Script Date    : 2024.08.10 05:08:42
    Script Purpose : 
                   : 
--]]

local SummonerQuest = 5905
local QuestItem = 1001115

function spawn(NPC)

end

function casted_on(NPC, Player, SpellName)
    if SpellName == 'Grab some crystals' then
        if GetQuestStep(Player,SummonerQuest)==1 and not HasItem(Player,1001113,1) then
            Quest = GetQuest(Player,5905)
            QuestItem = 1001115
            GiveQuestItem(Quest, Player, "You grab a handful of crystalized mana", QuestItem)
            SpawnSet(NPC, "show_command_icon", 0)
            SpawnSet(NPC, "display_hand_icon", 0)           
            SpawnSet(NPC, "show_name", 0)
        else
            SendMessage(Player, "You do not need this item right now.")        
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end