--[[
    Script Name    : SpawnScripts/SummonerPets/DeprecatedCombat.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.31 03:07:09
    Script Purpose : 
                   : 
--]]

--Deprecated Autoattack functions

--Determine damage function based on NPC level.
function AutoAttack(NPC, Spawn)
    if  level  == 1 then
        TierOneA(NPC)
    elseif level >= 2 and level  <= 5 then
        TierOneB(NPC)
    elseif level >= 6 and level  <= 9 then
        TierOneC(NPC)
    elseif level >= 10 and level <= 15 then
        TierTwoA(NPC)
    elseif level >= 16 and level <= 19 then
        TierTwoB(NPC)
    elseif level >= 20 and level <= 24 then
        TierThreeA(NPC)
    elseif level >= 25 and level  <= 29 then
        TierThreeB(NPC)
    elseif level >= 30 and level  <= 34 then
        TierFourA(NPC)
    elseif level >= 35 and level  <= 39 then
        TierFourB(NPC)
    end
end

--Damage functions based on NPC level range.
--Level 1
function TierOneA(NPC, Spawn)
    lowDmg = math.floor(1 * GlobalDmgMod)
    highDmg = math.floor(3 * GlobalDmgMod)
    damage(NPC)
end

--Level 2-5
function TierOneB(NPC, Spawn)
    if difficulty <=4 then -- 
        lowDmg = math.floor(1 * GlobalDmgMod + MeleeDmgMod)
        highDmg =math.floor(2 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(1 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(3 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >=6 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(4 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 6-9
function TierOneC(NPC, Spawn)
    if difficulty <=4 then  
        lowDmg = math.floor(1 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(3 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(4 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(7 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >=7 then 
        lowDmg = math.floor(5 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(10 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 10-15
function TierTwoA(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(4 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(7 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(6 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(15 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(8 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(17 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(12 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 16-19
function TierTwoB(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(7 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(6 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(15 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(12 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(18 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(32 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(25 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(55 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 20-24
function TierThreeA(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(2 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(7 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(6 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(15 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(12 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(18 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(32 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(25 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(75 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 25-29
function TierThreeB(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(6 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(15 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(12 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(20 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(35 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(18 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(32 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(35 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(105 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 30-34
function TierFourA(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(7 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(16 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(10 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(30 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(48 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(30 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(65 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(50 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(130 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end

--Level 35-39
function TierFourB(NPC, Spawn)
    if difficulty <=4 then 
        lowDmg = math.floor(8 * GlobalDmgMod + MeleeDmgMod) 
        highDmg =math.floor(22 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 5 then 
        lowDmg = math.floor(10 * GlobalDmgMod + MeleeDmgMod) 
        highDmg = math.floor(48 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty ==6 then 
        lowDmg = math.floor(24 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(66 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty == 7 then
        lowDmg = math.floor(30 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(90 * GlobalDmgMod + MeleeDmgMod)
    elseif difficulty >= 8 then
        lowDmg = math.floor(60 * GlobalDmgMod + MeleeDmgMod)
        highDmg = math.floor(220 * GlobalDmgMod + MeleeDmgMod)
    end
    damage(NPC)
end