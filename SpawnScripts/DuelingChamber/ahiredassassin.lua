--[[
    Script Name    : SpawnScripts/DuelingChamber/ahiredassassin.lua
    Script Author  : dorbin
    Script Date    : 2024.08.12 12:08:21
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    NPCModule(NPC, Spawn)
    SpawnSet(NPC,"faction",0)
    SpawnSet(NPC,"show_name",0)
    SpawnSet(NPC,"show_level",0)
    SpawnSet(NPC,"attackable",0)
    SpawnSet(NPC,"targetable",0)
    SpawnSet(NPC,"show_command_icon",0)
    SpawnSet(NPC,"model_type",2306)
end

function respawn(NPC)
	spawn(NPC)
end

function aggro(NPC,Spawn)
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"show_name",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"show_command_icon",1)    

    local GenderChoice = MakeRandomInt(0,1)
    if GenderChoice ==1 then
        SpawnSet(NPC,"model_type",MakeRandomInt(54,59))
    else
        SpawnSet(NPC,"model_type",MakeRandomInt(60,73))
end
end

function death(NPC,Spawn)
    local zone = GetZone(NPC)
    local Dasicar = GetSpawnByLocationID(zone, 133793704)
    local assassin1 = GetSpawnByLocationID(zone, 133793751)
    local assassin2 = GetSpawnByLocationID(zone, 133793752)
    if IsAlive(Dasicar) == false and IsAlive(assassin1) == false and IsAlive(assassin2) == false then
    if HasQuest(Spawn,5905) then
    SetStepComplete(Spawn,5905,1)
    end
    end
end