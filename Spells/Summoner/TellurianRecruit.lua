--[[
    Script Name    : Spells/Summoner/TellurianRecruit.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.13 03:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, Dif, NotUsed, HPMod, PWMod, Sz, SList)
   Pet = SummonPet(Caster, PetID, 23)
   GlobalStatMod = 1.0
   Level = GetLevel(Pet)
   difficulty = Dif
   local HP = Level * HPMod
   local PW = Level * PWMod
   local NewHP = math.floor(HP)
   local NewPW = math.floor(PW)
   
   SpawnSet(Pet, "difficulty", Dif)
   SpawnSet(Pet, "size", Sz)
   SetSpellList(Pet, SList)
   SetMaxHP(Pet, NewHP)
   ModifyHP(Pet, NewHP)
   SetMaxPower(Pet, NewPW)
   ModifyPower(Pet, NewPW)
   Attributes(Pet)
 end


function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end

function Attributes(Pet)
    -- Calculate attributes
    if  Level <= 4 then
        baseStat = 19 else
            baseStat = Level + 15
    end
    
    local low = baseStat - 15   -- Difficulty 1-3 vvv
    local four = baseStat - 10  -- Difficulty 4 vv
    local five = baseStat - 5   -- Difficulty 5 v
    local seven = baseStat + 10 -- Difficulty 7 ^
    local eight = baseStat + 20 -- Difficulty 8 ^^
    local nine = baseStat + 30  -- Difficulty 9 ^^^
    
    lowStat = math.floor(low * GlobalStatMod)
    fourStat = math.floor(four * GlobalStatMod)
    fiveStat = math.floor(five * GlobalStatMod)
    sixStat = math.floor(baseStat * GlobalStatMod)
    sevenStat = math.floor(seven * GlobalStatMod)
    eightStat = math.floor(eight * GlobalStatMod)
    nineStat = math.floor(nine * GlobalStatMod)
    
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
    elseif difficulty == 8 then
        finalStat = eightStat
    elseif difficulty == 9 then
        finalStat = nineStat
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
    
    AttributeModifiers(Pet) -- Determine modifiers based on primary attributes.
end

function AttributeModifiers(Pet)
    MeleeDmgMod = math.floor(GetStr(Pet) / 10)  -- Determines strength bonus to auttoattack damage.
    StaminaHPMod = GetSta(Pet) / 10  -- Determins stamina bonus to hitpoints.
end
