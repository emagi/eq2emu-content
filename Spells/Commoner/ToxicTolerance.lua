--[[
    Script Name    : Spells/Commoner/ToxicTolerance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 04:05:40
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