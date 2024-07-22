--[[
    Script Name    : Spells/Apperception.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
