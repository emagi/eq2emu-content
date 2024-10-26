--[[
    Script Name    : Spells/Commoner/Perseverance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 03:05:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
