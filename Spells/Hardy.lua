--[[
    Script Name    : Spells/Hardy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.28 05:04:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 202, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
