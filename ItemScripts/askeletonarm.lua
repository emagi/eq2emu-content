--[[
    Script Name    : ItemScripts/askeletonarm.lua
    Script Author  : AussieGlen//Dorbin
    Script Date    : 2021.12.29 08:12:01
    Script Purpose : 
                   : 
--]]

local LoreAndLegendSkeleton = 5396

function examined(Item, Player)
    local LnLAccept = GetRuleFlagFloat("R_World", "LoreAndLegendAccept")
if LnLAccept > 0 and not HasQuest(Player, LoreAndLegendSkeleton) and not HasCompletedQuest(Player, LoreAndLegendSkeleton) then
    OfferQuest(nil, Player, LoreAndLegendSkeleton)
else
    conversation = CreateConversation()    
if  HasQuest(Player, LoreAndLegendSkeleton) and  GetQuestStepProgress(Player, LoreAndLegendSkeleton, 4)==0 then
    AddConversationOption(conversation, "Begin to study...", "Step_Complete")
end
    AddConversationOption(conversation, "No, put it away", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the skeleton. Do you wish to study it?")
    end
end

function Step_Complete(Item, Player)
if HasItem(Player,2734,1) then
    SetStepComplete(Player, LoreAndLegendSkeleton, 4)
    CloseItemConversation(Item, Player)
    RemoveItem(Player, 2734)
end
end


function item_description(Item, Spawn)
    return "You have already examined this item."
end
