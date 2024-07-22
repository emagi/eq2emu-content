--[[
    Script Name    : Spells/Resistant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:15
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
