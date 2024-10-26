--[[
    Script Name    : Spells/Commoner/StrengthoftheNorth.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.01 03:05:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end