--[[
    Script Name    : Spells/ElvenReflexes.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 02:05:15
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end