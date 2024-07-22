--[[
    Script Name    : Spells/Savvy.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end