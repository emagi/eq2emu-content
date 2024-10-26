--[[
    Script Name    : SpawnScripts/SummoningResearchChamber/shardofmalachite.lua
    Script Author  : dorbin
    Script Date    : 2024.08.10 05:08:05
    Script Purpose : 
                   : 
--]]

local SummonerQuest = 5905
local QuestItem = 1001114

function spawn(NPC)

end

function casted_on(NPC, Player, SpellName)
    if SpellName == 'Grab the shard' then
        if GetQuestStep(Player,SummonerQuest)==1 and not HasItem(Player,1001113,1) then
            Quest = GetQuest(Player,5905)
            QuestItem = 1001114
            GiveQuestItem(Quest, Player, "You grab a shard of malachite", QuestItem)
            Despawn(NPC)
            
        else
            SendMessage(Player, "You do not need this item right now.")        
        end
    end
end

function respawn(NPC)
	spawn(NPC)
end