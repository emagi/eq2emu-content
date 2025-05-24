--[[
    Script Name    : SpawnScripts/NektulosClassic/GulThexEventController.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.22 11:05:10
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC)   
    LevelMin = 29        
    LevelMax = 30   
    BossLevel = 30
    Wave1 = 1058173
    Wave2 = 1058174 
    Wave3 = 1058175       

    SpawnGroupByID(zone, Wave1, MakeRandomInt(LevelMin, LevelMax))
    AddTimer(NPC, 6000, "Wave2Check")
end


function Wave2Check(NPC, Spawn)
    local zone = GetZone(NPC)
    
    if  IsSpawnGroupAlive(zone, Wave1) == true then
        AddTimer(NPC, 6000, "Wave2Check")
    else 
        AddTimer(NPC, 6000, "SecondWave")
    end
end

function SecondWave(NPC, Spawn)
    local zone = GetZone(NPC)
    local Wave2Chance = MakeRandomInt(1,100)
    
    if Wave2Chance <= 33 then
        SpawnGroupByID(zone, Wave2,  MakeRandomInt(LevelMin, LevelMax))
        AddTimer(NPC, 6000, "Wave3Check")
    else 
        AddTimer(NPC, 6000, "CloseEvent")
    end
end

function Wave3Check(NPC, Spawn)
    local zone = GetZone(NPC)
    
    if IsSpawnGroupAlive(zone, Wave2) == true then
        AddTimer(NPC, 6000, "Wave3Check")
    else 
        AddTimer(NPC, 6000, "ThirdWave")
    end
end

function ThirdWave(NPC, SPawn)
    zone= GetZone(NPC)
    SpawnGroupByID(zone, Wave3, BossLevel)
    AddTimer(NPC, 6000, "EndCheck")
end

function EndCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    if IsSpawnGroupAlive(zone, Wave) == true then
        AddTimer(NPC, 6000, "EndCheck")
    else 
        AddTimer(NPC, 6000, "CloseEvent")
    end
end

function CloseEvent(NPC)
    local zone = GetZone(NPC)
    Despawn(GetSpawnByLocationID(zone, ControlObject))
end

function respawn(NPC)
	spawn(NPC)
end

