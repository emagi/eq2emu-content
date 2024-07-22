--[[
    Script Name    : Spells/Commoner/Endurance.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.08 03:05:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

