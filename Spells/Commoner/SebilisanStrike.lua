--[[
    Script Name    : Spells/Commoner/SebilisanStrike.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 07:05:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddProc(Caster, 1, 5.0)
end

function proc(Caster, Target, Type)
    Level = GetLevel(Caster)
    MinDmg = math.floor(Level * 0.5)
    MaxDmg = math.floor(Level * 1.0)
    if Type == 1 then
        ProcDamage(Caster, Target, "Sebilisan Strike", 1, MakeRandomInt(MinDmg, MaxDmg))
    end 
end

function remove(Caster, Target)
    RemoveProc()
end 

