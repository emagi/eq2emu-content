--[[
    Script Name    : Spells/Enduring.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 1, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end