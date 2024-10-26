--[[
    Script Name    : Spells/StrongJawed.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.01 04:05:43
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 205, math.floor(level * 2.0))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end