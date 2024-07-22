--[[
    Script Name    : Spells/Sturdy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.29 04:04:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxHP = GetMaxHP(Caster)
    AddSpellBonus(Caster, 500, math.floor(MaxHP * 0.025))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

