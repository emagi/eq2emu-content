--[[
    Script Name    : SpawnScripts/SummonerPets/SpawnCampController.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.28 02:07:35
    Script Purpose : 
                   : 
--]]

function spawn(NPC, Spawn)
    zone = GetZone(NPC)
    ControlObject = x   --Loc ID for camp controller.  Camp controller is an invisible cube spawn containing this script.
    LevelMin = x        --Min level for trash spawn groups
    LevelMax = x        --Max level for trash spawn groups
    SubBossLevel = x    --Level of SubBoss group
    BossLevel = x       --Level of BossGroup
    SubBossGroup = x    --GroupID for SubBoss Group
    BossGroup = x       --GroupID for Boss Group
    PropGroup = x       --GroupID for camp props i.e. tents, campfires, etc
    BuffObject = x      --LocID for buff object to spawn in place of named.  i.e. gnollish ark 
    
    Group1(NPC, Spawn, x, x) --Enter in group IDs for variant groups in that spawn.  Default script is setup for 2 variants, more can be added.
    Group2(NPC, Spawn, x, x)
    Group3(NPC, Spawn, x, x)
    Group4(NPC, Spawn, x, x)
    
    SpawnGroupByID(zone, Group1, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, Group2, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, Group3, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, Group4, MakeRandomInt(LevelMin, LevelMax))
    SpawnGroupByID(zone, PropGroup, 0)

    AddTimer(NPC, 6000, "SubBossCheck")
end

function Group1(NPC, Spawn, Var1, Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        Group1 = Var1
    else
        Group1 = Var2
    end
end

function Group2(NPC, Spawn, Var1, Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        Group2 = Var1
    else
        Group2 = Var2
    end
end

function Group3(NPC, Spawn, Var1, Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        Group3 = Var1
    else
        Group3 = Var2
    end
end

function Group4(NPC, Spawn, Var1, Var2)
    local VariantCheck = MakeRandomInt(1,2)
    
    if VariantCheck == 1 then
        Group4 = Var1
    else
        Group4 = Var2
    end
end

function SubBossCheck(NPC, Spawn)
    if  GetSpawnByGroupID(zone, Group1) ~=nil and 
        GetSpawnByGroupID(zone, Group2) ~=nil and
        GetSpawnByGroupID(zone, Group3) ~=nil and
        GetSpawnByGroupID(zone, Group4) ~=nil then
        AddTimer(NPC, 6000, "SubBossCheck")
    else 
        SubBoss(NPC)
    end
end

function SubBoss(NPC, Spawn)
    SpawnGroupByID(zone,SubBossGroup, SubBossLevel)
    AddTimer(NPC, 6000, "BossCheck")
end

function BossCheck(NPC, Spawn)
    if GetSpawnByGroupID(zone, SubBossGroup) ~=nil then
        AddTimer(NPC, 6000, "BossCheck")
    else 
        Boss(NPC)
    end
end

function Boss(NPC, Spawn)
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
    if GetSpawnByGroupID(zone, BossGroup) ~=nil then
        AddTimer(NPC, 6000, "EndCheck")
    else 
        CloseEvent(NPC)
    end
end

function CloseEvent(NPC)
    Despawn(ControlObject)
    Despawn(#PropGroup)
    --Despawn control and prop objects
end

function respawn(NPC)
	spawn(NPC)
end

