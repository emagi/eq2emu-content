--[[
    Script Name    : SpawnScripts/ThunderingSteppes/DeathboneSavageController.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.03 07:11:20
    Script Purpose : 
                   : 
--]]
function spawn(NPC, Spawn)
    local zone = GetZone(NPC)
    ControlObject = 133795244   --Loc ID for camp controller.  Camp controller is an invisible cube spawn containing this script.
    LevelMin = 27        --Min level for trash spawn groups
    LevelMax = 28       --Max level for trash spawn groups
    SubBossLevel = 28    --Level of SubBoss group
    BossLevel = 28       --Level of BossGroup
    SubBossGroup = 1058031    --GroupID for SubBoss Group
    BossGroup = 1058032      --GroupID for Boss Group
    --PropGroup = 1057886       --GroupID for camp props i.e. tents, campfires, etc
    --BuffObject = 133794141      --LocID for buff object to spawn in place of named.  i.e. gnollish ark 
    --Prop1 = 1238144
    --Prop2 = 1238148
    --Prop3 = 1238149
    
    Group1(NPC, Spawn, 1058023, 1058024) --Enter in group IDs for variant groups in that spawn.  Default script is setup for 2 variants, more can be added.
    Group2(NPC, Spawn, 1058025, 1058026)
    Group3(NPC, Spawn, 1058027, 1058028)
    Group4(NPC, Spawn, 1058029, 1058030)
    
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