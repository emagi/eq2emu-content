--[[
    Script Name    : SpawnScripts/SummonerPets/PetModule.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.01.25 03:01:28
    Script Purpose : 
                   : 
--]]

function PetModule(Pet)
    GlobalStatMod = 1.0
    Level = GetLevel(Pet)
    Attributes(Pet)
    HealthPower(Pet)
    AutoAtack(Pet)
end

function Attributes(Pet)
    BaseStat = Level + 15
    
    local low = BaseStat - 15   -- Difficulty 1-3 vvv
    local four = BaseStat - 10  -- Difficulty 4 vv
    local five = BaseStat - 5   -- Difficulty 5 v
    local seven = BaseStat + 10 -- Difficulty 7 ^

    lowStat = math.floor(low * GlobalStatMod)
    fourStat = math.floor(four * GlobalStatMod)
    fiveStat = math.floor(five * GlobalStatMod)
    sixStat = math.floor(baseStat * GlobalStatMod)
    sevenStat = math.floor(seven * GlobalStatMod)

    -- Determine attribute by difficulty
    if difficulty <= 3 then
        finalStat = lowStat
    elseif difficulty == 4 then
        finalStat = fourStat
    elseif difficulty == 5 then
        finalStat = fiveStat
    elseif difficulty == 6 then
        finalStat = sixStat
    elseif difficulty == 7 then
        finalStat = sevenStat
    end
    
    SetInfoStructFloat(Pet, "str", finalStat)
    SetStrBase(Pet, finalStat)
    SetInfoStructFloat(Pet, "agi", finalStat)
    SetAgiBase(Pet, finalStat)
    SetInfoStructFloat(Pet, "sta", finalStat)
    SetStaBase(Pet, finalStat)
    SetInfoStructFloat(Pet, "intel", finalStat)
    SetIntBase(Pet, finalStat)
    SetInfoStructFloat(Pet, "wis", finalStat)
    SetWisBase(Pet, finalStat)
   
end


function HealthPower(Pet)
    
end

function AutoAtack(Pet)
    
end
