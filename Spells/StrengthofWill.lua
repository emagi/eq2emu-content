--[[
    Script Name    : Spells/StrengthofWill.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 208, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

