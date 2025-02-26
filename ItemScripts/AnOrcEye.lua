--[[
    Script Name    : ItemScripts/AnOrcEye.lua
    Script Author  : Premierio015//Dorbin
    Script Date    : 2021.06.20 09:06:00
    Script Purpose : Item Script for Lore and Legend:Orc Quest
                   : 
--]]

local LoreAndLegendOrc = 5257

function examined(Item, Player)
    local LnLAccept = GetRuleFlagFloat("R_World", "LoreAndLegendAccept")
if LnLAccept > 0 and not HasQuest(Player, LoreAndLegendOrc) and not HasCompletedQuest(Player, LoreAndLegendOrc) then
    OfferQuest(nil, Player, LoreAndLegendOrc)
else
    conversation = CreateConversation()    
    if HasQuest(Player, LoreAndLegendOrc) and  GetQuestStepProgress(Player, LoreAndLegendOrc, 4)==0  then
    AddConversationOption(conversation, "Begin to study...", "Step_Complete")
    end
    AddConversationOption(conversation, "No, put away", "CloseItemConversation")
    StartDialogConversation(conversation, 2, Item, Player, "This item can be used to learn the secrets of the orc. Do you wish to study it?")
    end
end

function Step_Complete(Item, Player)
if HasItem(Player,3798,1) then
    SetStepComplete(Player, LoreAndLegendOrc, 4)
    CloseItemConversation(Item, Player)
    RemoveItem(Player, 3798)
end
end


function item_description(Item, Player)
   if  QuestStepIsComplete(Player, LoreAndLegendOrc, 4) then
   return "You have already examined this item."
end
   end