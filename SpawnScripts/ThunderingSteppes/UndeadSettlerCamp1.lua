--[[
    Script Name    : SpawnScripts/ThunderingSteppes/UndeadSettlerCamp1.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.08.10 05:08:51
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    local zone = GetZone(NPC)
    ControlObject = 133793531   --Loc ID for camp controller.  Camp controller is an invisible cube spawn containing this script.
    LevelMin = 20        --Min level for trash spawn groups
    LevelMax = 21        --Max level for trash spawn groups
    SubBossLevel = 22    --Level of SubBoss group
    BossLevel = 22       --Level of BossGroup
    SubBossGroup = 1057741    --GroupID for SubBoss Group
    BossGroup = 1057742       --GroupID for Boss Group
    --PropGroup = 1057708       --GroupID for camp props i.e. tents, campfires, etc
    BuffObject = 133793532      --LocID for buff object to spawn in place of named.  i.e. gnollish ark 
    
    Group1(NPC, Spawn, 1057733, 1057734) --Enter in group IDs for variant groups in that spawn.  Default script is setup for 2 variants, more can be added.
    Group2(NPC, Spawn, 1057735, 1057736)
    Group3(NPC, Spawn, 1057737, 1057738)
    Group4(NPC, Spawn, 1057739, 1057740)
    
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
        SpawnByLocationID(zone, BuffObject)
        CloseEvent(NPC)
    end
end

function EndCheck(NPC, Spawn)
    local zone = GetZone(NPC)
    if IsSpawnGroupAlive(zone, BossGroup) == true then
        AddTimer(NPC, 6000, "EndCheck")
    else 
        CloseEvent(NPC)
    end
end

function CloseEvent(NPC)
    local zone = GetZone(NPC)
    Despawn(GetSpawnByLocationID(zone, 133793531))
    --Despawn(PropGroup)

end

function respawn(NPC)
	spawn(NPC)
end
