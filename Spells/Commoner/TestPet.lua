--[[
    Script Name    : Spells/Commoner/TestPet.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.07.02 11:07:06
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, PetTitle, ModelID, Dif, MaxLvl, ClassID, Sz, SList)
    Pet = SummonPet(Caster, 8350013, MaxLvl)
    Level = GetLevel(Pet)
    CasterInt = GetInt(Caster)
    MainStat = CasterInt
    MinorStat = math.floor(CasterInt * 0.85)
    
    ChooseClass(Caster, Target)
    SpawnSet(Pet, "sub_title", PetTitle)
    SpawnSet(Pet, "model_type", ModelID)
    SpawnSet(Pet, "difficulty", Dif)
    SpawnSet(Pet, "class", ClassID)
    SpawnSet(Pet, "size", Sz)
    SetSpellList(Pet, SList)
end

function ChooseClass(Caster, Target, ClassID)
    if ClassID >= 1 and ClassID <=10 then
        fighter(Caster, Target)
    elseif ClassID >= 31 and ClassID <= 42 then
        scout(Caster, Target)
    elseif ClassID >= 21 and ClassID <= 30 then
        mage(Caster, Target)
    end
end

function attributes(Caster, Target)
    SetInfoStructFloat(Pet, "str", StatStr)
    SetStrBase(Pet, StatStr)
    SetInfoStructFloat(Pet, "agi", StatAgi)
    SetAgiBase(Pet, StatAgi)
    SetInfoStructFloat(Pet, "sta", StatSta)
    SetStaBase(Pet, StatSta)
    SetInfoStructFloat(Pet, "intel", StatInt)
    SetIntBase(Pet, StatInt)
    SetInfoStructFloat(Pet, "wis", StatWis)
    SetWisBase(Pet, StatWis)
end
 
function fighter(Caster, Target)
    ClassType = 1
    StatStr = MainStat
    StatAgi = MinorStat
    StatSta = MainStat
    StatInt = MinorStat
    StatWis = MinorStat
    attributes(Caster, Target)
end

function mage(Caster, Target)
    ClassType = 2
    StatStr = MinorStat
    StatAgi = MinorStat
    StatSta = MinorStat
    StatInt = MainStat
    StatWis = MainStat
    attributes(Caster, Target)
end 

function scout (Caster, Target)
    ClassType = 3
    StatStr = MainStat
    StatAgi = MainStat
    StatSta = MinorStat
    StatInt = MinorStat
    StatWis = MinorStat
    attributes(Caster, Target)
end

function HealthPower(Caster, Target)
    if Dif == 1 then
        DifMod = 0.20  
    elseif Dif == 2 then
        DifMod = 0.25
    elseif Dif == 3 then
        DifMod = 0.35
    elseif Dif == 4 then
        DifMod = 0.45
    elseif Dif == 5 then
        DifMod = 0.66
    elseif Dif == 6 then
        DifMod = 1.0
    elseif Dif == 7 then
        DifMod = 1.45
    end
    
    if level == 1 then
        hp = 30 
        pw = 25 
    elseif level == 2 then
        hp = 45 
        pw = 35 
    elseif level == 3 then
        hp = 75 
        pw = 45 
    elseif level == 4 then
        hp = 110 
        pw = 55 
    elseif level == 5 then
        hp = 130 
        pw = 65 
    elseif level ==  6 then
        hp = 150 
        pw = 80 
    elseif level == 7 then
        hp = 200 
        pw = 90 
    elseif level == 8 then
        hp = 240 
        pw = 100
    elseif level == 9 then
        hp = 275 
        pw = 110 
    elseif level == 10 then
        hp = 370 
        pw = 130 
    elseif level ==  11 then
        hp = 430 
        pw = 160 
    elseif level == 12 then
        hp = 550 
        pw = 185 
    elseif level == 13 then
        hp = 680 
        pw = 205 
    elseif level == 14 then
        hp = 795 
        pw = 240 
    elseif level == 15 then
        hp = 920 
        pw = 270 
    elseif level == 16 then
        hp = 1045 
        pw = 310 
    elseif level == 17 then
        hp = 1180 
        pw = 360 
    elseif level == 18 then
        hp = 1290 
        pw = 410 
    elseif level == 19 then
        hp = 1440 
        pw = 425 
    elseif level == 20 then
        hp = 1930 
        pw = 475 
    elseif level == 21 then
        hp = 2120 
        pw = 500 
    elseif level == 22 then
        hp = 2355 
        pw = 545 
    elseif level == 23 then
        hp = 2595 
        pw = 575 
    elseif level == 24 then
        hp = 2840 
        pw = 620 
    elseif level == 25 then
        hp = 3080 
        pw = 670 
    elseif level == 26 then
        hp = 3340 
        pw = 700 
    elseif level == 27 then
        hp = 3600 
        pw = 755 
    elseif level == 28 then
        hp = 3820 
        pw = 795 
    elseif level == 29 then
        hp = 4240 
        pw = 835 
    else
        hp = 5000   --temp values
        pw = 900  -- temp values
    end  
    
    TotalHP = math.floor(hp * DifMod)
    TotalPW = math.floor(pw * DifMod)
    
    SetMaxHP(Pet, TotalHP)
    ModifyHP(Pet, TotalHP)
    SetMaxPower(Pet, TotalPW)
    ModifyPower(Pet, TotalPW)
end

function remove(Caster, Target)
   pet = GetPet(Caster)
   if pet ~= nil then
      DismissPet(pet)
   end
end