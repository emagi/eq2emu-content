--[[
    Script Name    : SpawnScripts/NektulosClassic/PaddlefootController.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.23 08:05:19
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    local zone = GetZone(NPC)
    ControlObject = GetSpawnLocationID(NPC)   --Loc ID for camp controller.  Camp controller is an invisible cube spawn containing this script.
    LevelMin = 20        --Min level for trash spawn groups
    LevelMax = 22       --Max level for trash spawn groups
    SubBossLevel = 22    --Level of SubBoss group
    BossLevel = MakeRandomInt(23,25)       --Level of BossGroup
    SubBossGroup = 1058180    --GroupID for SubBoss Group
    BossGroup = 1058181       --GroupID for Boss Group
    --PropGroup = xx       --GroupID for camp props i.e. tents, campfires, etc
    --BuffObject = xx      --LocID for buff object to spawn in place of named.  i.e. gnollish ark 
    --Prop1 = xx
    --Prop2 = xx
    --Prop3 = xx
    
    Group1(NPC, Spawn, 1058176, 1058176) --Enter in group IDs for variant groups in that spawn.  Default script is setup for 2 variants, more can be added.
    Group2(NPC, Spawn, 1058177, 1058177)
    Group3(NPC, Spawn, 1058178, 1058178)
    Group4(NPC, Spawn, 1058179, 1058179)
    
    SpawnGroupByID(zone, G1, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, G2, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, G3, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, G4, MakeRandomInt(LevelMin, LevelMax))
    --SpawnGroupByID(zone, PropGroup, 0)

    AddTimer(NPC, 6000, "SubBossCheck")
end

function Group1(NPC, Spawn, G1Var1, G1Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        G1 = G1Var1
    else
        G1 = G1Var2
    end
end

function Group2(NPC, Spawn, G2Var1, G2Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        G2 = G2Var1
    else
        G2 = G2Var2
    end
end

function Group3(NPC, Spawn, G3Var1, G3Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        G3 = G3Var1
    else
        G3 = G3Var2
    end
end

function Group4(NPC, Spawn, G4Var1, G4Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        G4 = G4Var1
    else
        G4 = G4Var2
    end
end

function SubBossCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    if  IsSpawnGroupAlive(zone, G1) == true then
        AddTimer(NPC, 6000, "SubBossCheck", 1, Spawn)
    elseif
        IsSpawnGroupAlive(zone, G2) == true then
        AddTimer(NPC, 6000, "SubBossCheck", 1, Spawn)
    elseif
        IsSpawnGroupAlive(zone, G3) == true then
        AddTimer(NPC, 6000, "SubBossCheck", 1, Spawn)
    elseif
        IsSpawnGroupAlive(zone, G4) == true then
        AddTimer(NPC, 6000, "SubBossCheck", 1, Spawn)
    else 
        AddTimer(NPC, 6000, "SubBoss")
    end
end

function SubBoss(NPC, Spawn)
    local zone = GetZone(NPC)
    SpawnGroupByID(zone, SubBossGroup, SubBossLevel)
    AddTimer(NPC, 6000, "BossCheck")
end

function BossCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    if IsSpawnGroupAlive(zone, SubBossGroup) == true then
        AddTimer(NPC, 6000, "BossCheck", 1, Spawn)
    else 
        AddTimer(NPC, 6000, "Boss")
    end
end

function Boss(NPC, Spawn)
    local zone = GetZone(NPC)
    local BossChance = MakeRandomInt(1,100)
    
    if BossChance <= 33 then
        SpawnGroupByID(zone, BossGroup, BossLevel)
        AddTimer(NPC, 6000, "EndCheck")
    else 
        --SpawnByLocationID(zone, BuffObject)
        AddTimer(NPC, 6000, "CloseEvent")
    end
end

function EndCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    if IsSpawnGroupAlive(zone, BossGroup) == true then
        AddTimer(NPC, 6000, "EndCheck")
    else 
        AddTimer(NPC, 6000, "CloseEvent")
    end
end

function CloseEvent(NPC)
    local zone = GetZone(NPC)
    Despawn(GetSpawnByLocationID(zone, ControlObject))
    --Despawn(GetSpawnByLocationID(zone, Prop1))
    --Despawn(GetSpawnByLocationID(zone, Prop2))
    --Despawn(GetSpawnByLocationID(zone, Prop3))


end

function respawn(NPC)
	spawn(NPC)
end