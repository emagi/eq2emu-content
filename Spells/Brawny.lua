--[[
    Script Name    : Spells/Brawny.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.26 03:04:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end