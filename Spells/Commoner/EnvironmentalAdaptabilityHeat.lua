--[[
    Script Name    : Spells/Commoner/EnvironmentalAdaptabilityHeat.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 01:05:07
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 201, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end


