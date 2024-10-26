--[[
    Script Name    : Spells/Devout.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:29
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
