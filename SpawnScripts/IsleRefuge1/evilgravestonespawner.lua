--[[
    Script Name    : SpawnScripts/IsleRefuge1/evilgravestonespawner.lua
    Script Author  : Dorbin
    Script Date    : 2022.09.20 12:09:43
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
SetRequiredQuest(NPC, 5747, 1)
SetRequiredQuest(NPC, 5747, 2)
end

function casted_on(NPC, Spawn, Message)
    local zone = GetZone(NPC)
    local Rockbelly = GetSpawnByLocationID(zone, 133774610)
    if Message == "kick gravestone" and Rockbelly == nil and QuestIsComplete(Spawn, 5747) == false then
    if GetQuestStep(Spawn,5747) == 1 or GetQuestStep(Spawn,5747) == 2 then -- we already check above if rockbelly is spawned, so no dupe
--    SendPopUpMessage(Spawn, "You have disturbed the fallen captain's grave!", 230, 230, 230)
    RockbellyNew = SpawnByLocationID(zone,133774610)
    AddTimer(NPC,2000,"Attacking",1,Spawn)
    SetStepComplete(Spawn,5747,1)
--    SetAccessToEntityCommand(Spawn,NPC,"kick gravestone", 0)
    SpawnSet(NPC, "show_command_icon", 0)
    AddTimer(NPC,30000,"Reset")
    end
end
end

function Reset(NPC)
--    SetAccessToEntityCommand(Spawn,NPC,"kick gravestone", 1)
    SpawnSet(NPC, "show_command_icon", 1)
end

function Attacking(NPC,Spawn)
    local zone = GetZone(NPC)
    Rockbelly = GetSpawnByLocationID(zone,133774610)
     PlayFlavor(Rockbelly, "voiceover/english/captain_rockbelly/tutorial_island02_fvo_ghostshout.mp3", "Get youz away from meez treasures!  Dis meez loots!", "", 3040387050, 4243014787)
   if IsInCombat(Rockbelly)==false then
    Attack(Rockbelly,Spawn)
end
end

function respawn(NPC)
	spawn(NPC)
end
