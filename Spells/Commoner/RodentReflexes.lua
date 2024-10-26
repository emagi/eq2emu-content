--[[
    Script Name    : Spells/Commoner/RodentReflexes.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

