--[[
    Script Name    : Spells/Commoner/IncreasedImmunities.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 214, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
