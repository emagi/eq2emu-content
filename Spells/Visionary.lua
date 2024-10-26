--[[
    Script Name    : Spells/Visionary.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:23
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end