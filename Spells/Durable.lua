--[[
    Script Name    : Spells/Durable.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.28 05:04:50
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 4)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end