--[[
    Script Name    : Spells/Commoner/SwampDenizen.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.16 04:05:07
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
