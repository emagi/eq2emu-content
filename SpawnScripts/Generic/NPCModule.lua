--[[
    Script Name    : SpawnScripts/Generic/NPCModule.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.11.20 08:11:41
    Script Purpose : NPC Statistics Control Script 
                   : Consult LordPazuzu before modifying
                   : Updated 7/31/2025
--]]

--Add plugin modules as a require below.
require "SpawnScripts/Generic/EquipmentModule"  -- NPC equipment appearance presets.
require "SpawnScripts/Generic/NPCRaces"  --NPC racial appearance functions.
require "SpawnScripts/Generic/IdleAnimations"  -- Idle animation packages for compatible NPC model types.


GlobalDmgMod = 1.0      -- Global Damage Multiplier- make global adjustments to all NPC autoattack damage.
GlobalStatMod = 1.0     -- Global Attribute Multiplier- make global adjustments to NPC attribute scores.
GlobalHPMod  =  1.0     -- Global Hit Point Multiplier
GlobalPowerMod = 1.0    -- Global Power Pool Multiplier 

function NPCModule(NPC, Spawn) 
    level = GetLevel(NPC)           -- NPC Level
    difficulty = GetDifficulty(NPC) -- NPC Difficulty 

    --Included functions.  Comment out a function to disable.
    SpawnAnimations(NPC, Spawn) -- Special spawn animations by model type.
    Attributes(NPC, Spawn)     -- Determines basic stats of the NPC(str, agi, sta, int, wis)
    NewAutoAttack(NPC, Spawn)    -- Determines the NPC's tier for the purposes of autoattack damage.
    Regen(NPC, Spawn)          -- Sets NPC's health and/or power regeneration rates or disables regeneration entirely.
    HealthPower(NPC, Spawn)    -- Calculates NPC's based on level and difficulty.
    AddTimer(NPC, 25, "Heroic")  --  Applies heroic flag immediately after spawn in accordance with the way the server loads spawns. Spawnscript functions that check heroic status should be run on a delay longer than 1000. 6000 is the standard delay to run a function after spawn.
    AddTimer(NPC, 1000, "Heroic") -- Redundant heroic check to compensate for server lag when using developer commands to reload spawns.
    
end



-- Set attributes based on NPC level and difficulty
function Attributes(NPC, Spawn)
    -- Calculate attributes
    if level <= 5 then
        baseStat = 22
    else
        baseStat = level + 22
    end
    
    if level < 10 then
        low = baseStat  -- Difficulty 1-3 vvv
        four = baseStat   -- Difficulty 4 vv
        five = baseStat    -- Difficulty 5 v
        six = baseStat    -- Difficulty 6 -
        seven = baseStat * 1.25 -- Difficulty 7 ^
        eight = baseStat * 1.5 -- Difficulty 8 ^^
        nine = baseStat * 2.0 -- Difficulty 9 ^^^
    else
        low = baseStat  -- Difficulty 1-3 vvv
        four = baseStat * 1.5  -- Difficulty 4 vv
        five = baseStat * 2.0   -- Difficulty 5 v
        six = baseStat * 2.5   -- Difficulty 6 -
        seven = baseStat * 3.0 -- Difficulty 7 ^
        eight = baseStat * 3.5 -- Difficulty 8 ^^
        nine = baseStat * 4.0 -- Difficulty 9 ^^^
    end
    
    lowStat = math.floor(low * GlobalStatMod)
    fourStat = math.floor(four * GlobalStatMod)
    fiveStat = math.floor(five * GlobalStatMod)
    sixStat = math.floor(six * GlobalStatMod)
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
 
    SetInfoStructFloat(NPC, "str", finalStat)
    SetStrBase(NPC, finalStat)
    SetInfoStructFloat(NPC, "agi", finalStat)
    SetAgiBase(NPC, finalStat)
    SetInfoStructFloat(NPC, "sta", finalStat)
    SetStaBase(NPC, finalStat)
    SetInfoStructFloat(NPC, "intel", finalStat)
    SetIntBase(NPC, finalStat)
    SetInfoStructFloat(NPC, "wis", finalStat)
    SetWisBase(NPC, finalStat)
    
    AttributeModifiers(NPC) -- Determine modifiers based on primary attributes.
end

function AttributeModifiers(NPC, Spawn)
    MeleeDmgMod = math.ceil(GetStr(NPC) / 10)  -- Determines strength bonus to auttoattack damage.
    StaminaHPMod = math.ceil(GetSta(NPC) / 10)  -- Determins stamina bonus to hitpoints. Not implemented.
end

--Health and power regeneration rates
function Regen(NPC, Spawn)
    
    --if IsInCombat(NPC)  == true then    
        -- In-combat health regeneration
        SetInfoStructUInt(NPC, "hp_regen_override", 1)  -- Set to  0 to disable and allow the server to set the regen rate.
        SetInfoStructSInt(NPC, "hp_regen", 0)           -- Set Regen Amount. Default 0
    
        -- In-combat power regeneration
        SetInfoStructUInt(NPC, "pw_regen_override", 1)  -- Set to  0 to disable and allow the server to set the regen rate.
        SetInfoStructSInt(NPC, "pw_regen", 0)           -- Set Regen Amount. Default 0
end

--Autoattack damage calculation.
function NewAutoAttack(NPC, Spawn)
    if difficulty <= 4 then
        difMod = 0.3
    elseif difficulty == 5 then
        difMod = 0.7
    elseif difficulty == 6 then
        difMod = 1.0
    elseif difficulty == 7 then
        difMod = 1.5
    elseif difficulty == 8 then
        difMod = 2.25
    elseif difficulty == 9 then
        difMod = 3.5
    end
    
    if level <= 34 then
        MaxDmgMod = 1.01
    elseif level >= 35 then
        MaxDmgMod = 1.015 
    end 
    
    minDmg = (level * 0.6) * difMod
    maxDmg = ((level * 1.6 * MaxDmgMod) * difMod) 
    
    lowDmg = math.floor((minDmg + MeleeDmgMod) * GlobalDmgMod)
    highDmg = math.ceil((maxDmg + MeleeDmgMod) * GlobalDmgMod)
    
    damage(NPC)
end

--Autoattack damage override function.
function damage(NPC, Spawn)
    SetInfoStructUInt(NPC, "override_primary_weapon", 1) --Set to 1 enables override for autoattack damage.  Set to 0 to allow server to set damage.
    SetInfoStructUInt(NPC, "primary_weapon_damage_low", lowDmg) 
    SetInfoStructUInt(NPC, "primary_weapon_damage_high", highDmg)
    SetInfoStructUInt(NPC, "primary_weapon_delay", 3000)
end

--Calculate Hitpoints and Power
function HealthPower(NPC, Spawn)
    
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
    elseif difficulty == 8 then
        HPMod = 2.2
        PWMod = 2.2
    elseif difficulty == 9 then
        HPMod = 3.25
        PWMod = 3.25
    end
     
    --Calculate hitpoints and power based on level and difficuty
    if level == 1 then
        hp = 30 * HPMod * GlobalHPMod
        pw = 25 * PWMod * GlobalPowerMod
    elseif level == 2 then
        hp = 45 * HPMod * GlobalHPMod
        pw = 35 * PWMod * GlobalPowerMod
    elseif level == 3 then
        hp = 75 * HPMod * GlobalHPMod
        pw = 45 * PWMod * GlobalPowerMod
    elseif level == 4 then
        hp = 110 * HPMod * GlobalHPMod
        pw = 55 * PWMod * GlobalPowerMod
    elseif level == 5 then
        hp = 130 * HPMod * GlobalHPMod
        pw = 65 * PWMod * GlobalPowerMod
    elseif level ==  6 then
        hp = 150 * HPMod * GlobalHPMod
        pw = 80 * PWMod * GlobalPowerMod
    elseif level == 7 then
        hp = 200 * HPMod * GlobalHPMod
        pw = 90 * PWMod * GlobalPowerMod
    elseif level == 8 then
        hp = 240 * HPMod * GlobalHPMod
        pw = 100* PWMod * GlobalPowerMod
    elseif level == 9 then
        hp = 275 * HPMod * GlobalHPMod
        pw = 110 * PWMod * GlobalPowerMod
    elseif level == 10 then
        hp = 370 * HPMod * GlobalHPMod
        pw = 130 * PWMod * GlobalPowerMod
    elseif level ==  11 then
        hp = 430 * HPMod * GlobalHPMod
        pw = 160 * PWMod * GlobalPowerMod
    elseif level == 12 then
        hp = 550 * HPMod * GlobalHPMod
        pw = 185 * PWMod * GlobalPowerMod
    elseif level == 13 then
        hp = 680 * HPMod * GlobalHPMod
        pw = 205 * PWMod * GlobalPowerMod
    elseif level == 14 then
        hp = 795 * HPMod * GlobalHPMod
        pw = 240 * PWMod * GlobalPowerMod
    elseif level == 15 then
        hp = 920 * HPMod * GlobalHPMod
        pw = 270 * PWMod * GlobalPowerMod
    elseif level == 16 then
        hp = 1045 * HPMod * GlobalHPMod
        pw = 310 * PWMod * GlobalPowerMod
    elseif level == 17 then
        hp = 1180 * HPMod * GlobalHPMod
        pw = 360 * PWMod * GlobalPowerMod
    elseif level == 18 then
        hp = 1290 * HPMod * GlobalHPMod
        pw = 410 * PWMod * GlobalPowerMod
    elseif level == 19 then
        hp = 1440 * HPMod * GlobalHPMod
        pw = 425 * PWMod * GlobalPowerMod
    elseif level == 20 then
        hp = 1930 * HPMod * GlobalHPMod
        pw = 475 * PWMod * GlobalPowerMod
    elseif level == 21 then
        hp = 2120 * HPMod * GlobalHPMod
        pw = 500 * PWMod * GlobalPowerMod
    elseif level == 22 then
        hp = 2355 * HPMod * GlobalHPMod
        pw = 545 * PWMod * GlobalPowerMod
    elseif level == 23 then
        hp = 2595 * HPMod * GlobalHPMod
        pw = 575 * PWMod * GlobalPowerMod
    elseif level == 24 then
        hp = 2840 * HPMod * GlobalHPMod
        pw = 620 * PWMod * GlobalPowerMod
    elseif level == 25 then
        hp = 3080 * HPMod * GlobalHPMod
        pw = 670 * PWMod * GlobalPowerMod
    elseif level == 26 then
        hp = 3340 * HPMod * GlobalHPMod
        pw = 700 * PWMod * GlobalPowerMod
    elseif level == 27 then
        hp = 3600 * HPMod * GlobalHPMod
        pw = 755 * PWMod * GlobalPowerMod
    elseif level == 28 then
        hp = 3820 * HPMod * GlobalHPMod
        pw = 795 * PWMod * GlobalPowerMod
    elseif level == 29 then
        hp = 4240 * HPMod * GlobalHPMod
        pw = 835 * PWMod * GlobalPowerMod
    elseif level == 30 then
        hp = 4380 * HPMod * GlobalHPMod
        pw = 895 * PWMod * GlobalPowerMod
    elseif level == 31 then
        hp = 4570 * HPMod * GlobalHPMod
        pw = 935 * PWMod * GlobalPowerMod
    elseif level == 32 then
        hp = 4825 * HPMod * GlobalHPMod
        pw = 985 * PWMod * GlobalPowerMod
    elseif level == 33 then
        hp = 5030 * HPMod * GlobalHPMod
        pw = 1040 * PWMod * GlobalPowerMod
    elseif level == 34 then
        hp = 5240 * HPMod * GlobalHPMod
        pw = 1070 * PWMod * GlobalPowerMod
    elseif level == 35 then
        hp = 5455 * HPMod * GlobalHPMod
        pw = 1165 * PWMod * GlobalPowerMod
    elseif level == 36 then
        hp = 5735 * HPMod * GlobalHPMod
        pw = 1290 * PWMod * GlobalPowerMod
    elseif level == 37 then
        hp = 5875 * HPMod * GlobalHPMod
        pw = 1255 * PWMod * GlobalPowerMod
    elseif level == 38 then
        hp = 6095 * HPMod * GlobalHPMod
        pw = 1335 * PWMod * GlobalPowerMod
    elseif level == 39 then
        hp = 6320 * HPMod * GlobalHPMod
        pw = 1375 * PWMod * GlobalPowerMod
    elseif level == 40 then
        hp = 6550 * HPMod * GlobalHPMod
        pw = 1475 * PWMod * GlobalPowerMod
    elseif level == 41 then
        hp = 6805 * HPMod * GlobalHPMod
        pw = 1595 * PWMod * GlobalPowerMod
    elseif level == 42 then
        hp = 7260 * HPMod * GlobalHPMod
        pw = 1640 * PWMod * GlobalPowerMod
    elseif level == 43 then
        hp = 7295 * HPMod * GlobalHPMod
        pw = 1675 * PWMod * GlobalPowerMod
    elseif level == 44 then
        hp = 7835 * HPMod * GlobalHPMod
        pw = 1750 * PWMod * GlobalPowerMod
    elseif level == 45 then
        hp = 7920 * HPMod * GlobalHPMod
        pw = 1810 * PWMod * GlobalPowerMod
    elseif level == 46 then
        hp = 8125 * HPMod * GlobalHPMod
        pw = 1875 * PWMod * GlobalPowerMod
    elseif level == 47 then
        hp = 8490 * HPMod * GlobalHPMod
        pw = 2040 * PWMod * GlobalPowerMod
    elseif level == 48 then
        hp = 8785 * HPMod * GlobalHPMod
        pw = 2110 * PWMod * GlobalPowerMod
    elseif level == 49 then
        hp = 9020 * HPMod * GlobalHPMod
        pw = 2195 * PWMod * GlobalPowerMod
    elseif level == 50 then
        hp = 9325 * HPMod * GlobalHPMod
        pw = 2675 * PWMod * GlobalPowerMod
    elseif level > 50 then
        hp = 9625 * HPMod * GlobalHPMod
        pw = 2840 * PWMod * GlobalPowerMod
    end  

    ModifyMaxHP(NPC, math.floor(hp))
    ModifyHP(NPC, math.floor(hp))
    ModifyMaxPower(NPC, math.floor(pw))
    ModifyPower(NPC, math.floor(hp))
    
end

--Automatically set heroic flags based on specified criteria
function Heroic(NPC, Spawn)
    local group = GetGroup(NPC)
    
    if group ~= nil then
        local groupsize = #group
        if groupsize > 1 then
            SpawnSet(NPC, "heroic", 1) 
        end
    end
        
    if difficulty == 8 or difficulty == 9 then
        SpawnSet(NPC, "heroic", 1)
    end
    
end




-- PATHING SCRIPTS --

--[[ Randomized Movement Loops
    Call the RandomMovement() function in the NPC's spawn function.
    Example format: RandomMovement(NPC, Spawn, -5, 5, 2, 8, 15)
    This exampled sets the NPC to randomly move anywhere in a 5 meter radius
    from it's spawn point at a speed of 2, moving every 8-15 seconds.
--]]

function RandomMovement(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    
    MovementLoopAddLocation(NPC, X, Y, Z, Speed, MakeRandomInt(MinDly, MaxDly))
    MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
	MovementLoopAddLocation(NPC, X + LocModX, Y, Z + LocModZ, Speed, MakeRandomInt(MinDly, MaxDly))
	MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
	MovementLoopAddLocation(NPC, X + LocModX, Y, Z + LocModZ, Speed, MakeRandomInt(MinDly, MaxDly))
	MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
	MovementLoopAddLocation(NPC, X + LocModX, Y, Z + LocModZ, Speed, MakeRandomInt(MinDly, MaxDly))
	MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
	MovementLoopAddLocation(NPC, X + LocModX, Y, Z + LocModZ, Speed, MakeRandomInt(MinDly, MaxDly))
	MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
	MovementLoopAddLocation(NPC, X + LocModX, Y, Z + LocModZ, Speed, MakeRandomInt(MinDly, MaxDly))
end

function RandomMovementFlight(NPC, Spawn, NegDist, PosDist, NegHeight, PosHeight, Speed, MinDly, MaxDly)
    local X = GetX(NPC)
	local Y = GetY(NPC)
	local Z = GetZ(NPC)
    MovementLoopAddLocation(NPC, X, Y, Z, Speed, MakeRandomInt(MinDly, MaxDly))
	MovementLoopAddLocation(NPC, X + MakeRandomInt(NegDist, PosDist), Y + MakeRandomInt(NegHeight, PosHeight), Z + MakeRandomInt(NegDist, PosDist), Speed, MakeRandomInt(MinDly, MaxDly))
	MovementLoopAddLocation(NPC, X + MakeRandomInt(NegDist, PosDist), Y + MakeRandomInt(NegHeight, PosHeight), Z + MakeRandomInt(NegDist, PosDist), Speed, MakeRandomInt(MinDly, MaxDly))
	MovementLoopAddLocation(NPC, X + MakeRandomInt(NegDist, PosDist), Y + MakeRandomInt(NegHeight, PosHeight), Z + MakeRandomInt(NegDist, PosDist), Speed, MakeRandomInt(MinDly, MaxDly))
	MovementLoopAddLocation(NPC, X + MakeRandomInt(NegDist, PosDist), Y + MakeRandomInt(NegHeight, PosHeight), Z + MakeRandomInt(NegDist, PosDist), Speed, MakeRandomInt(MinDly, MaxDly))
	MovementLoopAddLocation(NPC, X + MakeRandomInt(NegDist, PosDist), Y + MakeRandomInt(NegHeight, PosHeight), Z + MakeRandomInt(NegDist, PosDist), Speed, MakeRandomInt(MinDly, MaxDly))
end

function MovementMod(NPC, Spawn, NegDist, PosDist, Speed, MinDly, MaxDly)
    MinNegDist = math.ceil(NegDist/2) 
	MinPosDist = math.ceil(PosDist/2) 
	MinX = MakeRandomInt(1,2)
	MinZ = MakeRandomInt(1,2)
	
	if MinX == 1 then
	    LocModX = MakeRandomInt(MinNegDist, NegDist)
	elseif MinX == 2 then
	    LocModX = MakeRandomInt(MinPostDist, PosDist)
	end
	
    if MinZ == 1 then
	    LocModZ = MakeRandomInt(MinNegDist, NegDist)
	elseif MinZ == 2 then
	    LocModZ = MakeRandomInt(MinPostDist, PosDist)
	end

end

-- Automatically calculate hit points, power, and regeneration for named NPCs
function Named(NPC, Spawn)
    level = GetLevel(NPC)
    difficulty =  GetDifficulty(NPC)
    NamedMod = 1.5
    AttributeMod = NamedMod * 2
    SpawnAnimations(NPC, Spawn)
    HealthPower(NPC)
    Attributes(NPC, Spawn)
    
    ModifyMaxHP(NPC, math.floor(hp * NamedMod))
    ModifyHP(NPC, math.floor(hp * NamedMod))
    ModifyMaxPower(NPC, math.floor(pw * NamedMod))
    ModifyPower(NPC, math.floor(hp * NamedMod))


    SetInfoStructUInt(NPC, "hp_regen_override", 1)  
    SetInfoStructSInt(NPC, "hp_regen", (level * 2) + (difficulty * 2))           
    SetInfoStructUInt(NPC, "pw_regen_override", 1)  
    SetInfoStructSInt(NPC, "pw_regen", (level * 2) + (difficulty * 2))  
    
    
    --Disabled until named autoattack damage can be integrated into the Named() function.
    --[[SetInfoStructFloat(NPC, "str", finalStat * AttributeMod)
    SetStrBase(NPC, finalStat * AttributeMod)
    SetInfoStructFloat(NPC, "agi", finalStat * AttributeMod)
    SetAgiBase(NPC, finalStat * AttributeMod)
    SetInfoStructFloat(NPC, "sta", finalStat * AttributeMod)
    SetStaBase(NPC, finalStat * AttributeMod)
    SetInfoStructFloat(NPC, "intel", finalStat * AttributeMod)
    SetIntBase(NPC, finalStat * AttributeMod)
    SetInfoStructFloat(NPC, "wis", finalStat * AttributeMod)
    SetWisBase(NPC, finalStat * AttributeMod) --]]
end


--Spawn Animations for specific NPC model types.
function SpawnAnimations(NPC, Spawn)
    
    if GetModelType(NPC) == 138 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 1521 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 140 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 1584 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 2411 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 2412 then
        SetSpawnAnimation(NPC, 13016)
    end
    
    if GetModelType(NPC) == 2413 then
        SetSpawnAnimation(NPC, 13016)
    end

end

