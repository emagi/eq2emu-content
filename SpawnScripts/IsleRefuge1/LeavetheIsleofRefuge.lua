--[[
    Script Name    : SpawnScripts/IsleRefuge1/LeavetheIsleofRefuge.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.26 03:09:10
    Script Note : Updated with Quest Delete code (6/25/25)
                   : 
--]]
local BARBARIAN = 0
local DARK_ELF = 1
local DWARF = 2
local ERUDITE = 3
local FROGLOK = 4
local GNOME = 5
local HALF_ELF = 6
local HALFLING = 7
local HIGH_ELF = 8
local HUMAN = 9
local IKSAR = 10
local KERRA = 11
local OGRE = 12
local RATONGA = 13
local TROLL = 14
local WOOD_ELF = 15
local FAE = 16
local ARASAI = 17
local SARNAK = 18
local VAMPIRE = 19
local AERAKYN = 20

function spawn(NPC)

end

function respawn(NPC)
	spawn(NPC)
end


function casted_on(NPC, Player, Message)
	if Message == "leave the isle" then
   if GetClass(Player)<0 then -- STILL NEED CLASS UPDATE
        PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
 	    SendPopUpMessage(Player,"Speak with Garven Tralk to advance your training.",200,200,200)
	    SendMessage(Player,"Speak with Garven Tralk to advance your training before leaving the island.")  
	    
	elseif GetQuestStep(Player,5758)==1 or GetQuestStep(Player,5717)==1 then -- STILL NEED DUKE FERRIN UPDATE
        PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_003.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
 	    SendPopUpMessage(Player,"Speak with Duke Ferrin about securing a vessel off the island.",200,200,200)
	    SendMessage(Player,"Speak with Duke Ferrin about securing a vessel off the island.")   
	    
    elseif GetQuestStep(Player,5758)==2 or HasCompletedQuest(Player, 5758) then --FREEPORT LEAVING
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_002.wav", GetX(NPC), GetY(NPC), GetZ(NPC))

    if GetClientVersion(Player) <= 546 then
       local con = CreateConversation()
	    AddConversationOption(con, "Leave for Freeport", "LeaveIslandFP")
        AddConversationOption(con, "Stay","CloseConversation")
        StartDialogConversation(con, 1, NPC, Player, "Are you sure you wish to leave the Isle of Refuge?\n\nLeave the Island - It is unlikely you will return, but you will continue to pursue greatness in Freeport.\n\n[All active Isle of Refuge quests will be removed!]")
    else
	window = CreateOptionWindow();
	AddOptionWindowOption(window, " Leave for Freeport", "Leave the Island - It is unlikely you will return, but you will continue to pursue greatness in Freeport.                                           [All active Isle of Refuge quests will be removed!]", 0, 2297, "LeaveIslandFP")
	AddOptionWindowOption(window, " Stay", "Stay on the Island -  Continue your adventures here and return to this bell when you are ready to leave.", 0, 2296, "Cancel")
	SendOptionWindow(window, Player, "Are you sure you wish to leave the Isle of Refuge?", "Cancel")
    end	
	
    elseif GetQuestStep(Player,5717)==2 or HasCompletedQuest(Player, 5717)  then --QEYNOS LEAVING
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_002.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    if GetClientVersion(Player) <= 546 then
       local con = CreateConversation()
	    AddConversationOption(con, "Leave for Qeynos", "LeaveIslandQ")
        AddConversationOption(con, "Stay","CloseConversation")
        StartDialogConversation(con, 1, NPC, Player, "Are you sure you wish to leave the Isle of Refuge?\n\nLeave the Island - It is unlikely you will return, but you will continue to pursue greatness in Qeynos.\n\n[All active Isle of Refuge quests will be removed!]")
    else
    window = CreateOptionWindow();
	AddOptionWindowOption(window, " Leave for Qeynos", "Leave the Island - It is unlikely you will return, but you will continue to pursue greatness in Qeynos.                                           [All active Isle of Refuge quests will be removed!]", 0, 2297, "LeaveIslandQ")
	AddOptionWindowOption(window, " Stay", "Stay on the Island - Continue your adventures here and return to this bell when you are ready to leave.", 0, 2296, "Cancel")
	SendOptionWindow(window, Player, "Are you sure you wish to leave the Isle of Refuge?", "Cancel")
	end
    else -- STILL NEED ALIGNMENT QUEST
        PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_001.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
	    SendPopUpMessage(Player,"Speak with an Ambassador if you are ready to leave the island.",200,200,200)
	    SendMessage(Player,"Speak with an ambassador if you are ready to leave the island.")
    end
end
end

function HumanQStarcrest(NPC,Player)        
    QuestCheck(NPC,Player)    
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    ZoneRef = GetZone("Starcrest")
    Zone(ZoneRef,Player)   
end

function HumanQNettleville(NPC,Player)
    QuestCheck(NPC,Player)    
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    ZoneRef = GetZone("Nettleville")
    Zone(ZoneRef,Player)   
end

function LeaveIslandQ(NPC, Player)
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    local Race = GetRace(Player)
    
    QuestCheck(NPC,Player)    
    
    if Race == 11 or Race == 19 then
        ZoneRef = GetZone("Nettleville")
        Zone(ZoneRef,Player)
    elseif Race == 3 or Race == 20 then
        ZoneRef = GetZone("Starcrest")
        Zone(ZoneRef,Player)
    elseif Race == 9 then
        if GetClientVersion(Player) <= 546 then
            local con = CreateConversation()
            AddConversationOption(con, "Nettleville Hovel", "HumanQNettleville")
            AddConversationOption(con, "Starcrest Commune", "HumanQStarcrest")
            AddConversationOption(con, "Tell me about these places", "Human2")
            AddConversationOption(con, "Stay","CloseConversation")
            StartDialogConversation(con, 1, NPC, Player, "Humans must select their next desitnation in Qeynos.")
        else
            window = CreateOptionWindow();
            AddOptionWindowOption(window, " Nettleville Hovel", "...", 2, 26, "HumanQNettleville")
            AddOptionWindowOption(window, " Starcrest Commune", "...", 2, 27, "HumanQStarcrest")
            AddOptionWindowOption(window, " Stay", "...", 0, 2296, "Cancel")
            SendOptionWindow(window, Player, "Humans Must Select Their Next Desitnation", "Cancel")
        end
    elseif Race == 0 or Race == 2 then
        ZoneRef = GetZone("Graystone")
        Zone(ZoneRef,Player)
    elseif Race == 4 or Race == 8 then
        ZoneRef = GetZone("Castleview")
        Zone(ZoneRef,Player)
    elseif Race == 6 or Race == 15 or Race == 16 then
        ZoneRef = GetZone("Willowwood")
        Zone(ZoneRef,Player)
    elseif Race == 5 or Race == 7 then
        ZoneRef = GetZone("Baubbleshire")
        Zone(ZoneRef,Player)
    else
        SendMessage(Player,"There doesn't seem to be a boat available for you to Qeynos right now.  [Report this!]")   
    end
end

function Human2(NPC,Player)
    local con = CreateConversation()
    AddConversationOption(con, "Nettleville Hovel", "HumanQNettleville")
    AddConversationOption(con, "Starcrest Commune", "HumanQStarcrest")
    AddConversationOption(con, "Stay","CloseConversation")
    StartDialogConversation(con, 1, NPC, Player, "...description text...")
end

function LeaveIslandFP(NPC, Player)
    PlaySound(Player,"sounds/objectsandparticlesounds/amb_marinersbell_005.wav", GetX(NPC), GetY(NPC), GetZ(NPC))
    Race = GetRace(Player)
    
    QuestCheck(NPC,Player)    

    if Race == 3 or Race == 11 then
        ZoneRef = GetZone("Stonestair")
        Zone(ZoneRef,Player)
    elseif Race == 5 or Race == 13 then
        ZoneRef = GetZone("TempleSt")
        Zone(ZoneRef,Player)
    elseif Race == 9 or Race == 6 then
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Player)
    elseif Race == 12 or Race == 14 then
        ZoneRef = GetZone("BigBend")
        Zone(ZoneRef,Player)
    elseif Race == 1  or Race == 19 or Race == 17 then
        ZoneRef = GetZone("Longshadow")
        Zone(ZoneRef,Player)
    elseif Race == 0 or Race == 10 or Race == 18 then
        ZoneRef = GetZone("ScaleYard")
        Zone(ZoneRef,Player)
    else 
        ZoneRef = GetZone("BeggarsCourt")
        Zone(ZoneRef,Player)
    end
end

function QuestCheck(NPC,Player) 

local AquaticResearch = 5757
local AttackOrcLeader = 5752
local SandyBoneShard = 5746
local CleaningCutlass = 5724
local DeerHunting = 5737
local DestroyingGobSupplies = 5736
local EbiksMissingParts = 5755
local GatheringSealantComponents = 5740
local GoblinSupplyRaid = 5735
local HuntingtheOrcishLeader = 5753
local LasydiasCall = 5756
local RefugeeRescue = 5739
local RemovingtheOrcMenace1 = 5750
local RemovingtheOrcMenace2 = 5751
local ScoutingtheGoblinCamp = 5741
local StoptheSaboteurs = 5748
local StrikingBackattheGoblinsPriest = 5742
local StrikingBackattheGoblinsFighter = 5743
local StrikingBackattheGoblinsMage = 5744
local StrikingBackattheGoblinsScout = 5745
local VenomSacCollection = 5738
local WarStatues = 5734
local XalieasRequest  = 5754
local X_MarkstheSpot = 5747

local GruttoothInvasionFighter  = 5726
local GruttoothInvasionMage  = 5728
local GruttoothInvasionPriest  = 5727
local GruttoothInvasionScout  = 5729

local Speakingwith_Braksan  = 5731
local Speakingwith_Mizan  = 5733
local Speakingwith_Nathinia  = 5732
local Speakingwith_Vladiminn  = 5730
local CellarCleanup  = 5749

if (HasQuest(Player, AquaticResearch) and not HasCompletedQuest(Player, AquaticResearch)) or
   (HasQuest(Player, AttackOrcLeader) and not HasCompletedQuest(Player, AttackOrcLeader)) or
   (HasQuest(Player, SandyBoneShard) and not HasCompletedQuest(Player, SandyBoneShard)) or
   (HasQuest(Player, CleaningCutlass) and not HasCompletedQuest(Player, CleaningCutlass)) or
   (HasQuest(Player, DeerHunting) and not HasCompletedQuest(Player, DeerHunting)) or
   (HasQuest(Player, DestroyingGobSupplies) and not HasCompletedQuest(Player, DestroyingGobSupplies)) or
   (HasQuest(Player, EbiksMissingParts) and not HasCompletedQuest(Player, EbiksMissingParts)) or
   (HasQuest(Player, GatheringSealantComponents) and not HasCompletedQuest(Player, GatheringSealantComponents)) or
   (HasQuest(Player, GoblinSupplyRaid) and not HasCompletedQuest(Player, GoblinSupplyRaid)) or
   (HasQuest(Player, HuntingtheOrcishLeader) and not HasCompletedQuest(Player, HuntingtheOrcishLeader)) or
   (HasQuest(Player, LasydiasCall) and not HasCompletedQuest(Player, LasydiasCall)) or
   (HasQuest(Player, RefugeeRescue) and not HasCompletedQuest(Player, RefugeeRescue)) or
   (HasQuest(Player, RemovingtheOrcMenace1) and not HasCompletedQuest(Player, RemovingtheOrcMenace1)) or
   (HasQuest(Player, RemovingtheOrcMenace2) and not HasCompletedQuest(Player, RemovingtheOrcMenace2)) or
   (HasQuest(Player, ScoutingtheGoblinCamp) and not HasCompletedQuest(Player, ScoutingtheGoblinCamp)) or
   (HasQuest(Player, StoptheSaboteurs) and not HasCompletedQuest(Player, StoptheSaboteurs)) or
   (HasQuest(Player, StrikingBackattheGoblinsPriest) and not HasCompletedQuest(Player, StrikingBackattheGoblinsPriest)) or
   (HasQuest(Player, StrikingBackattheGoblinsFighter) and not HasCompletedQuest(Player, StrikingBackattheGoblinsFighter)) or
   (HasQuest(Player, StrikingBackattheGoblinsMage) and not HasCompletedQuest(Player, StrikingBackattheGoblinsMage)) or
   (HasQuest(Player, StrikingBackattheGoblinsScout) and not HasCompletedQuest(Player, StrikingBackattheGoblinsScout)) or
   (HasQuest(Player, VenomSacCollection) and not HasCompletedQuest(Player, VenomSacCollection)) or
   (HasQuest(Player, WarStatues) and not HasCompletedQuest(Player, WarStatues)) or
   (HasQuest(Player, XalieasRequest) and not HasCompletedQuest(Player, XalieasRequest)) or
   (HasQuest(Player, X_MarkstheSpot) and not HasCompletedQuest(Player, X_MarkstheSpot)) or
   (HasQuest(Player, Speakingwith_Braksan) and not HasCompletedQuest(Player, Speakingwith_Braksan)) or
   (HasQuest(Player, Speakingwith_Mizan) and not HasCompletedQuest(Player, Speakingwith_Mizan)) or
   (HasQuest(Player, Speakingwith_Nathinia) and not HasCompletedQuest(Player, Speakingwith_Nathinia)) or
   (HasQuest(Player, Speakingwith_Vladiminn) and not HasCompletedQuest(Player, Speakingwith_Vladiminn)) or
   (HasQuest(Player, CellarCleanup) and not HasCompletedQuest(Player, CellarCleanup)) or
   (HasQuest(Player, GruttoothInvasionFighter) and not HasCompletedQuest(Player, GruttoothInvasionFighter)) or
   (HasQuest(Player, GruttoothInvasionMage) and not HasCompletedQuest(Player, GruttoothInvasionMage)) or
   (HasQuest(Player, GruttoothInvasionPriest) and not HasCompletedQuest(Player, GruttoothInvasionPriest)) or
   (HasQuest(Player, GruttoothInvasionScout) and not HasCompletedQuest(Player, GruttoothInvasionScout)) then

if HasQuest(Player, AquaticResearch) then
    DeleteQuest(Player, AquaticResearch, true)
end
if HasQuest(Player, AttackOrcLeader) then
    DeleteQuest(Player, AttackOrcLeader, true)
end
if HasQuest(Player, SandyBoneShard) then
    DeleteQuest(Player, SandyBoneShard, true)
end
if HasQuest(Player, CleaningCutlass) then
    DeleteQuest(Player, CleaningCutlass, true)
end
if HasQuest(Player, DeerHunting) then
    DeleteQuest(Player, DeerHunting, true)
end
if HasQuest(Player, DestroyingGobSupplies) then
    DeleteQuest(Player, DestroyingGobSupplies, true)
end
if HasQuest(Player, EbiksMissingParts) then
    DeleteQuest(Player, EbiksMissingParts, true)
end
if HasQuest(Player, GatheringSealantComponents) then
    DeleteQuest(Player, GatheringSealantComponents, true)
end
if HasQuest(Player, GoblinSupplyRaid) then
    DeleteQuest(Player, GoblinSupplyRaid, true)
end
if HasQuest(Player, HuntingtheOrcishLeader) then
    DeleteQuest(Player, HuntingtheOrcishLeader, true)
end
if HasQuest(Player, LasydiasCall) then
    DeleteQuest(Player, LasydiasCall, true)
end
if HasQuest(Player, RefugeeRescue) then
    DeleteQuest(Player, RefugeeRescue, true)
end
if HasQuest(Player, RemovingtheOrcMenace1) then
    DeleteQuest(Player, RemovingtheOrcMenace1, true)
end
if HasQuest(Player, RemovingtheOrcMenace2) then
    DeleteQuest(Player, RemovingtheOrcMenace2, true)
end
if HasQuest(Player, ScoutingtheGoblinCamp) then
    DeleteQuest(Player, ScoutingtheGoblinCamp, true)
end
if HasQuest(Player, StoptheSaboteurs) then
    DeleteQuest(Player, StoptheSaboteurs, true)
end
if HasQuest(Player, StrikingBackattheGoblinsPriest) then
    DeleteQuest(Player, StrikingBackattheGoblinsPriest, true)
end
if HasQuest(Player, StrikingBackattheGoblinsFighter) then
    DeleteQuest(Player, StrikingBackattheGoblinsFighter, true)
end
if HasQuest(Player, StrikingBackattheGoblinsMage) then
    DeleteQuest(Player, StrikingBackattheGoblinsMage, true)
end
if HasQuest(Player, StrikingBackattheGoblinsScout) then
    DeleteQuest(Player, StrikingBackattheGoblinsScout, true)
end
if HasQuest(Player, VenomSacCollection) then
    DeleteQuest(Player, VenomSacCollection, true)
end
if HasQuest(Player, WarStatues) then
    DeleteQuest(Player, WarStatues, true)
end
if HasQuest(Player, XalieasRequest) then
    DeleteQuest(Player, XalieasRequest, true)
end
if HasQuest(Player, X_MarkstheSpot) then
    DeleteQuest(Player, X_MarkstheSpot, true)
end
   --Hallmark
if HasQuest(Player, Speakingwith_Braksan) then
    DeleteQuest(Player, Speakingwith_Braksan, true)
end
if HasQuest(Player, Speakingwith_Mizan) then
    DeleteQuest(Player, Speakingwith_Mizan, true)
end
if HasQuest(Player, Speakingwith_Nathinia) then
    DeleteQuest(Player, Speakingwith_Nathinia, true)
end
if HasQuest(Player, Speakingwith_Vladiminn) then
    DeleteQuest(Player, Speakingwith_Vladiminn, true)
end
if HasQuest(Player, CellarCleanup) then
    DeleteQuest(Player, CellarCleanup, true)
end
if HasQuest(Player, GruttoothInvasionFighter) then
    DeleteQuest(Player, GruttoothInvasionFighter, true)
end
if HasQuest(Player, GruttoothInvasionMage) then
    DeleteQuest(Player, GruttoothInvasionMage, true)
end
if HasQuest(Player, GruttoothInvasionPriest) then
    DeleteQuest(Player, GruttoothInvasionPriest, true)
end
if HasQuest(Player, GruttoothInvasionScout) then
    DeleteQuest(Player, GruttoothInvasionScout, true)
end


end
end
