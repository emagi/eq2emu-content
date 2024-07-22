--[[
    Script Name    : Spells/RallosianConditioning.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
