--[[
    Script Name    : Spells/Summoner/CombatPet.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.02 06:02:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetID, Dif, Sz, SList, MaxLvl)
    Pet = SummonPet(Caster, PetID, MaxLvl)
    level = GetLevel(Pet)
    difficulty = Dif
    SpawnSet(Pet, "difficulty", Dif)
    SpawnSet(Pet, "size", Sz)
    SetSpellList(Pet, SList)
    Attributes(Caster, Target)
    HealthPower(Caster, Target)
    AutoAttack(Caster, Target)
 end


function remove(Caster, Target)
   Pet = GetPet(Caster)
   if Pet ~= nil then
      DismissPet(Pet)
   end
end

function Attributes(Caster, Target)
    GlobalStatMod = 1.0 
    BaseStat = level + 22
    
    local low = BaseStat  -- Difficulty 1-3 vvv
    local four = BaseStat * 1.5  -- Difficulty 4 vv
    local five = BaseStat * 2.0   -- Difficulty 5 v
    local six = BaseStat * 2.5   -- Difficulty 6 -
    local seven = BaseStat * 3.0 -- Difficulty 7 ^

    lowStat = math.floor(low * GlobalStatMod)
    fourStat = math.floor(four * GlobalStatMod)
    fiveStat = math.floor(five * GlobalStatMod)
    sixStat = math.floor(six * GlobalStatMod)
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

function HealthPower(Caster, Target)
    GlobalHPMod  =  1.0     
    GlobalPowerMod = 1.0 
    PetClass = GetClass(Pet)
    
    -- Calculate multipliers based on difficulty tier
    if difficulty == 1 then
        HPMod = 0.20
        PWMod = 0.20  
    elseif difficulty == 2 then
        HPMod = 0.25
        PWMod = 0.25
    elseif difficulty == 3 then
        HPMod = 0.35
        PWMod = 0.35
    elseif difficulty == 4 then
        HPMod = 0.45
        PWMod = 0.45
    elseif difficulty == 5 then
        HPMod = 0.66
        PWMod = 0.66
    elseif difficulty == 6 then
        HPMod = 1.0
        PWMod = 1.0
    elseif difficulty == 7 then
        HPMod = 1.45
        PWMod = 1.45
    end
    
    if PetClass >=1 and PetClass <= 10 then
        ClassMod = 1.0 
    elseif PetClass >= 21 and PetClass <= 30 then
        ClassMod = 0.50
    else
        ClassMod = 0.75
    end
     
    --Calculate hitpoints and power based on level and difficuty
    if level == 1 then
        hp = 30 * HPMod * ClassMod * GlobalHPMod
        pw = 25 * PWMod * GlobalPowerMod
    elseif level == 2 then
        hp = 45 * HPMod * ClassMod * GlobalHPMod
        pw = 35 * PWMod * GlobalPowerMod
    elseif level == 3 then
        hp = 75 * HPMod * ClassMod * GlobalHPMod
        pw = 45 * PWMod * GlobalPowerMod
    elseif level == 4 then
        hp = 110 * HPMod * ClassMod * GlobalHPMod
        pw = 55 * PWMod * GlobalPowerMod
    elseif level == 5 then
        hp = 130 * HPMod * ClassMod * GlobalHPMod
        pw = 65 * PWMod * GlobalPowerMod
    elseif level ==  6 then
        hp = 150 * HPMod * ClassMod * GlobalHPMod
        pw = 80 * PWMod * GlobalPowerMod
    elseif level == 7 then
        hp = 200 * HPMod * ClassMod * GlobalHPMod
        pw = 90 * PWMod * GlobalPowerMod
    elseif level == 8 then
        hp = 240 * HPMod * ClassMod * GlobalHPMod
        pw = 100* PWMod * GlobalPowerMod
    elseif level == 9 then
        hp = 275 * HPMod * ClassMod * GlobalHPMod
        pw = 110 * PWMod * GlobalPowerMod
    elseif level == 10 then
        hp = 370 * HPMod * ClassMod * GlobalHPMod
        pw = 130 * PWMod * GlobalPowerMod
    elseif level ==  11 then
        hp = 430 * HPMod * ClassMod * GlobalHPMod
        pw = 160 * PWMod * GlobalPowerMod
    elseif level == 12 then
        hp = 550 * HPMod * ClassMod * GlobalHPMod
        pw = 185 * PWMod * GlobalPowerMod
    elseif level == 13 then
        hp = 680 * HPMod * ClassMod * GlobalHPMod
        pw = 205 * PWMod * GlobalPowerMod
    elseif level == 14 then
        hp = 795 * HPMod * ClassMod * GlobalHPMod
        pw = 240 * PWMod * GlobalPowerMod
    elseif level == 15 then
        hp = 920 * HPMod * ClassMod * GlobalHPMod
        pw = 270 * PWMod * GlobalPowerMod
    elseif level == 16 then
        hp = 1045 * HPMod * ClassMod * GlobalHPMod
        pw = 310 * PWMod * GlobalPowerMod
    elseif level == 17 then
        hp = 1180 * HPMod * ClassMod * GlobalHPMod
        pw = 360 * PWMod * GlobalPowerMod
    elseif level == 18 then
        hp = 1290 * HPMod * ClassMod * GlobalHPMod
        pw = 410 * PWMod * GlobalPowerMod
    elseif level == 19 then
        hp = 1440 * HPMod * ClassMod * GlobalHPMod
        pw = 425 * PWMod * GlobalPowerMod
    elseif level == 20 then
        hp = 1930 * HPMod * ClassMod * GlobalHPMod
        pw = 475 * PWMod * GlobalPowerMod
    elseif level == 21 then
        hp = 2120 * HPMod * ClassMod * GlobalHPMod
        pw = 500 * PWMod * GlobalPowerMod
    elseif level == 22 then
        hp = 2355 * HPMod * ClassMod * GlobalHPMod
        pw = 545 * PWMod * GlobalPowerMod
    elseif level == 23 then
        hp = 2595 * HPMod * ClassMod * GlobalHPMod
        pw = 575 * PWMod * GlobalPowerMod
    elseif level == 24 then
        hp = 2840 * HPMod * ClassMod * GlobalHPMod
        pw = 620 * PWMod * GlobalPowerMod
    elseif level == 25 then
        hp = 3080 * HPMod * ClassMod * GlobalHPMod
        pw = 670 * PWMod * GlobalPowerMod
    elseif level == 26 then
        hp = 3340 * HPMod * ClassMod * GlobalHPMod
        pw = 700 * PWMod * GlobalPowerMod
    elseif level == 27 then
        hp = 3600 * HPMod * ClassMod * GlobalHPMod
        pw = 755 * PWMod * GlobalPowerMod
    elseif level == 28 then
        hp = 3820 * HPMod * ClassMod * GlobalHPMod
        pw = 795 * PWMod * GlobalPowerMod
    elseif level == 29 then
        hp = 4240 * HPMod * ClassMod * GlobalHPMod
        pw = 835 * PWMod * GlobalPowerMod
    elseif level == 30 then
        hp = 4380 * HPMod * ClassMod * GlobalHPMod
        pw = 895 * PWMod * GlobalPowerMod
    elseif level == 31 then
        hp = 4570 * HPMod * ClassMod * GlobalHPMod
        pw = 935 * PWMod * GlobalPowerMod
    elseif level == 32 then
        hp = 4825 * HPMod * ClassMod * GlobalHPMod
        pw = 985 * PWMod * GlobalPowerMod
    elseif level == 33 then
        hp = 5030 * HPMod * ClassMod * GlobalHPMod
        pw = 1040 * PWMod * GlobalPowerMod
    elseif level == 34 then
        hp = 5240 * HPMod * ClassMod * GlobalHPMod
        pw = 1070 * PWMod * GlobalPowerMod
    elseif level == 35 then
        hp = 5455 * HPMod * ClassMod * GlobalHPMod
        pw = 1165 * PWMod * GlobalPowerMod
    elseif level == 36 then
        hp = 5735 * HPMod * ClassMod * GlobalHPMod
        pw = 1290 * PWMod * GlobalPowerMod
    elseif level == 37 then
        hp = 5875 * HPMod * ClassMod * GlobalHPMod
        pw = 1255 * PWMod * GlobalPowerMod
    elseif level == 38 then
        hp = 6095 * HPMod * ClassMod * GlobalHPMod
        pw = 1335 * PWMod * GlobalPowerMod
    elseif level == 39 then
        hp = 6320 * HPMod * ClassMod * GlobalHPMod
        pw = 1375 * PWMod * GlobalPowerMod
    elseif level == 40 then
        hp = 6550 * HPMod * ClassMod * GlobalHPMod
        pw = 1475 * PWMod * GlobalPowerMod
    elseif level == 41 then
        hp = 6805 * HPMod * ClassMod * GlobalHPMod
        pw = 1595 * PWMod * GlobalPowerMod
    elseif level == 42 then
        hp = 7260 * HPMod * ClassMod * GlobalHPMod
        pw = 1640 * PWMod * GlobalPowerMod
    elseif level == 43 then
        hp = 7295 * HPMod * ClassMod * GlobalHPMod
        pw = 1675 * PWMod * GlobalPowerMod
    elseif level == 44 then
        hp = 7835 * HPMod * ClassMod * GlobalHPMod
        pw = 1750 * PWMod * GlobalPowerMod
    elseif level == 45 then
        hp = 7920 * HPMod * ClassMod * GlobalHPMod
        pw = 1810 * PWMod * GlobalPowerMod
    elseif level == 46 then
        hp = 8125 * HPMod * ClassMod * GlobalHPMod
        pw = 1875 * PWMod * GlobalPowerMod
    elseif level == 47 then
        hp = 8490 * HPMod * ClassMod * GlobalHPMod
        pw = 2040 * PWMod * GlobalPowerMod
    elseif level == 48 then
        hp = 8785 * HPMod * ClassMod * GlobalHPMod
        pw = 2110 * PWMod * GlobalPowerMod
    elseif level == 49 then
        hp = 9020 * HPMod * ClassMod * GlobalHPMod
        pw = 2195 * PWMod * GlobalPowerMod
    else
        hp = 9325 * HPMod * ClassMod * GlobalHPMod
        pw = 2675 * PWMod * GlobalPowerMod
    end  

    SetMaxHP(Pet, math.floor(hp))
    ModifyHP(Pet, math.floor(hp))
    SetMaxPower(Pet, math.floor(pw))
    ModifyPower(Pet, math.floor(pw))
end

function AutoAttack(Caster, Target)
    MeleeDmgMod = GetStr(Pet) / 10
    GlobalDmgMod = 1.0
    PetClass = GetClass(Pet)
    
    if difficulty == 1 then
        DifficultyMod = 0.20
    elseif difficulty == 2 then
        DifficultyMod = 0.25
    elseif difficulty == 3 then
        DifficultyMod = 0.35
    elseif difficulty == 4 then
        DifficultyMod = 0.45
    elseif difficulty == 5 then
        DifficultyMod = 0.66
    elseif difficulty == 6 then
        DifficultyMod = 1.0
    elseif difficulty == 7 then
        DifficultyMod = 1.45
    end
    
    
    if PetClass >=1 and PetClass <= 10 then
        ClassMod = 0.75
    elseif PetClass >= 21 and PetClass <= 30 then
        ClassMod = 0.50
    else
        ClassMod = 1.0
    end
    
    BaseLow = level * 0.6
    BaseHigh = level * 1.65
    
    LowDmg = math.ceil(((BaseLow * DifficultyMod) * ClassMod * GlobalDmgMod) + MeleeDmgMod)
    HighDmg = math.ceil(((BaseHigh * DifficultyMod) * ClassMod * GlobalDmgMod) + MeleeDmgMod)
    
    SetInfoStructUInt(Pet, "override_primary_weapon", 1)
    SetInfoStructUInt(Pet, "primary_weapon_damage_low", LowDmg) 
    SetInfoStructUInt(Pet, "primary_weapon_damage_high", HighDmg)
    SetInfoStructUInt(Pet, "primary_weapon_delay", 3000)
end
