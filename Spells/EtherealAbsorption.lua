--[[
    Script Name    : Spells/EtherealAbsorption.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 03:05:20
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    CurrentRegen = GetInfoStructSInt(Caster, "power_regen")
    AddSpellBonus(Caster, 601, math.ceil(CurrentRegen * 0.05))
    AddSpellBonus(Caster, 4, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 

