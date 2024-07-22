--[[
    Script Name    : Spells/Clever.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.28 05:04:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 4)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
