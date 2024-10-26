--[[
    Script Name    : Spells/Enlightened.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 04:04:38
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end