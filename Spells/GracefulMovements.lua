--[[
    Script Name    : Spells/GracefulMovements.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:24
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 696, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 


