--[[
    Script Name    : Spells/Willed.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:03
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
