--[[
    Script Name    : Spells/Commoner/WindWarrior.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 08:05:45
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 696, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 


