--[[
    Script Name    : ItemScripts/abixiethorax.lua
    Script Author  : AussieGlen
    Script Date    : 2022.01.01 04:01:12
    Script Purpose : 
                   : 
--]]

local LoreAndLegendBixie = 5410

function examined(Item, Player)
    local LnLAccept = GetRuleFlagFloat("R_World", "LoreAndLegendAccept")
if LnLAccept > 0 and not HasQuest(Player, LoreAndLegendBixie) and not HasCompletedQuest(Player, LoreAndLegendBixie) then
    OfferQuest(nil, Player, LoreAndLegendBixie)
else
    conversation = CreateConversation()    
if  HasQuest(Player, LoreAndLegendBixie) and  GetQuestStepProgress(Player, LoreAndLegendBixie, 7)==0 then
    AddConversationOption(conversation, "Begin to study...", "Step_Complete")
end
    AddConversationOption(conversation, "No, put away", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the bixie. Do you wish to study it?")
   end
end

function Step_Complete(Item, Player)
if HasItem(Player,1222,1) then
    SetStepComplete(Player, LoreAndLegendBixie, 7)
    CloseItemConversation(Item, Player)
    RemoveItem(Player, 1222)
end
end

function item_description(Item, Spawn)
    return "You have already examined this item."
end

