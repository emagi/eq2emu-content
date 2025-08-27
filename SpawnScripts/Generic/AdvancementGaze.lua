--[[
    Script Name    : SpawnScripts/Generic/AdvancementGaze.lua
    Script Author  : Dorbin
    Script Date    : 2023.08.26 12:08:46
    Script Purpose : Used to determine if a player is the correct level for class advancement and needs a quest to direct them to their trainer.
                    Script differenciates between Q and FP factions
                   : 
--]]

local Q_MageCheck = 5877
local Q_FighterCheck = 5878
local Q_PriestCheck = 5879
local Q_ScoutCheck = 5880

local Q_Mage1 = 5767
local Q_Mage2 = 5768
local Q_Ench = 5771
local Q_Sorc = 5769
local Q_Summ = 5770

local Q_Fighter1 = 5787
local Q_Fighter2 = 5788
local Q_Brawl = 5790
local Q_Crusade = 5789
local Q_Warrior = 5791

local Q_Priest1 = 5772
local Q_Priest2 = 5773
local Q_Cleric = 5771
local Q_Druid = 5769
local Q_Shaman = 5770

local Q_Scout1 = 5782
local Q_Scout2 = 5783
local Q_Bard = 5784
local Q_Pred = 5785
local Q_Rog = 5786

--[[function spawn(NPC)
SetPlayerProximityFunction(NPC, 12, "ClassCheck", "LeaveRange")
end]]--

function ClassCheck_Q(NPC,Spawn) --Quest Callout
 if GetFactionAmount(Spawn,11)>=5000 then
    if GetLevel(Spawn) ==8 or GetLevel(Spawn)==9 then

        if GetClass(Spawn)==1 then -- FIGHTER
            if not HasQuest(Spawn,Q_FighterCheck) then
                if not HasQuest(Spawn,Q_Fighter1) and not HasCompletedQuest(Spawn,Q_Fighter1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Fighter1) and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Q_Fighter2) and not HasCompletedQuest(Spawn,Q_Fighter2) then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Fighter2) and not HasQuest(Spawn,Q_Brawl) and not HasQuest(Spawn,Q_Crusade) and not HasQuest(Spawn,Q_Warrior) then                          
                Offer(NPC,Spawn)
                end
            end
 
        elseif GetClass(Spawn)==11 then -- PRIEST
            if not HasQuest(Spawn,Q_PriestCheck) then
                if not HasQuest(Spawn,Q_Priest1) and not HasCompletedQuest(Spawn,Q_Priest1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Priest1) and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Q_Priest2) and not HasCompletedQuest(Spawn,Q_Priest2) then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Priest2) and not HasQuest(Spawn,Q_Cleric) and not HasQuest(Spawn,Q_Druid) and not HasQuest(Spawn,Q_Shaman) then                          
                Offer(NPC,Spawn)
                end
            end            
 
        elseif GetClass(Spawn)==21 then -- MAGE
            if CanReceiveQuest(Spawn,Q_MageCheck) then
                if not HasQuest(Spawn,Q_Mage1) and not HasCompletedQuest(Spawn,Q_Mage1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Mage1) and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Q_Mage2) and not HasCompletedQuest(Spawn,Q_Mage2) then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Mage2) and not HasQuest(Spawn,Q_Ench) and not HasQuest(Spawn,Q_Sorc) and not HasQuest(Spawn,Q_Summ) then                          
                Offer(NPC,Spawn)
                end
            end   
 
          elseif GetClass(Spawn)==31 then -- SCOUT
            if not HasQuest(Spawn,Q_ScoutCheck) then
                if not HasQuest(Spawn,Q_Scout1) and not HasCompletedQuest(Spawn,Q_Scout1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Scout1) and GetLevel(Spawn)>=8 and not HasQuest(Spawn,Q_Scout2) and not HasCompletedQuest(Spawn,Q_Scout2) then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Scout2) and not HasQuest(Spawn,Q_Bard) and not HasQuest(Spawn,Q_Pred) and not HasQuest(Spawn,Q_Rog) then                          
                Offer(NPC,Spawn)
                end
            end              
        end
    end
end
end

function Offer(NPC,Spawn)
if GetFactionAmount(Spawn,11) >= 5000 then
    if GetClass(Spawn) == 1 then
    OfferQuest(NPC,Spawn,Q_FighterCheck)
    elseif GetClass(Spawn) == 11 then
    OfferQuest(NPC,Spawn,Q_PriestCheck)
    elseif GetClass(Spawn) == 21 then
    OfferQuest(NPC,Spawn,Q_MageCheck)
    elseif GetClass(Spawn) == 31 then
    OfferQuest(NPC,Spawn,Q_ScoutCheck)
    end
end
end

------------FREEPORT-------------------------------------------------------------

local FP_MageCheck = 5881
local FP_FighterCheck = 5882
local FP_PriestCheck = 5883
local FP_ScoutCheck = 5884

local FP_Mage1 = 5902
local FP_Ench = 5903
local FP_Sorc = 5904
local FP_Summ = 5905

local FP_Fighter1 = 5898
local FP_Brawl = 5899
local FP_Crusade = 5900
local FP_Warrior = 5901

local FP_Priest1 = 5906
local FP_Cleric = 5907
local FP_Druid = 5908
local FP_Shaman = 5909

local FP_Scout1 = 5910
local FP_Bard = 5911
local FP_Pred = 5912
local FP_Rog = 5913



function ClassCheck_FP(NPC,Spawn) --Quest Callout
 if GetFactionAmount(Spawn,12)>=5000 then
    if GetLevel(Spawn) ==8 or GetLevel(Spawn)==9 then

        if GetClass(Spawn)==1 then -- FIGHTER
            if not HasQuest(Spawn,FP_FighterCheck) then
                if not HasQuest(Spawn,FP_Fighter1) and not HasCompletedQuest(Spawn,FP_Fighter1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,FP_Fighter1) and not HasQuest(Spawn,FP_Brawl) and not HasQuest(Spawn,FP_Crusade) and not HasQuest(Spawn,Q_Warrior) then                          
                Offer(NPC,Spawn)
                end
            end
 
        elseif GetClass(Spawn)==11 then -- PRIEST
            if not HasQuest(Spawn,FP_PriestCheck) then
                if not HasQuest(Spawn,FP_Priest1) and not HasCompletedQuest(Spawn,FP_Priest1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,FP_Priest1) and not HasQuest(Spawn,FP_Cleric) and not HasQuest(Spawn,FP_Druid) and not HasQuest(Spawn,FP_Shaman) then                          
                Offer(NPC,Spawn)
                end
            end            
 
        elseif GetClass(Spawn)==21 then -- MAGE
            if CanReceiveQuest(Spawn,FP_MageCheck) then
                if not HasQuest(Spawn,FP_Mage1) and not HasCompletedQuest(Spawn,FP_Mage1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,Q_Mage1) and not HasQuest(Spawn,FP_Ench) and not HasQuest(Spawn,FP_Sorc) and not HasQuest(Spawn,FP_Summ) then                          
                Offer(NPC,Spawn)
                end
            end   
 
          elseif GetClass(Spawn)==31 then -- SCOUT
            if not HasQuest(Spawn,FP_ScoutCheck) then
                if not HasQuest(Spawn,FP_Scout1) and not HasCompletedQuest(Spawn,FP_Scout1) and GetLevel(Spawn)>=8 then
                Offer(NPC,Spawn)
                elseif HasCompletedQuest(Spawn,FP_Scout2) and not HasQuest(Spawn,FP_Bard) and not HasQuest(Spawn,FP_Pred) and not HasQuest(Spawn,FP_Rog) then                          
                Offer(NPC,Spawn)
                end
            end              
        end
    end
end
end

function Offer(NPC,Spawn)
if GetFactionAmount(Spawn,12) >= 5000 then
    if GetClass(Spawn) == 1 then
    OfferQuest(NPC,Spawn,FP_FighterCheck)
    elseif GetClass(Spawn) == 11 then
    OfferQuest(NPC,Spawn,FP_PriestCheck)
    elseif GetClass(Spawn) == 21 then
    OfferQuest(NPC,Spawn,FP_MageCheck)
    elseif GetClass(Spawn) == 31 then
    OfferQuest(NPC,Spawn,FP_ScoutCheck)
    end
end
end