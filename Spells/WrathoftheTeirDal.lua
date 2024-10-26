--[[
    Script Name    : Spells/WrathoftheTeirDal.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddProc(Caster, 2, 5.0)
end

function proc(Caster, Target, Type)
    Level = GetLevel(Caster)
    MinDmg = math.floor(Level * 0.5)
    MaxDmg = math.floor(Level * 1.0)
    
    if Type == 2 then
        ProcDamage(Caster, Target, "Wrath of the Teir'Dal", 7, MakeRandomInt(MinDmg, MaxDmg))
    end 
end

function remove(Caster, Target)
    RemoveProc()
end 
