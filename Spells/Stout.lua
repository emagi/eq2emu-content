--[[
    Script Name    : Spells/Stout.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:23
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

