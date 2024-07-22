--[[
    Script Name    : Spells/Commoner/Resilience.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 04:05:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end


