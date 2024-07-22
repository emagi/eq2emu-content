--[[
    Script Name    : Spells/PathofLearning.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
