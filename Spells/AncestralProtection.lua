--[[
    Script Name    : Spells/AncestralProtection.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 209, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

