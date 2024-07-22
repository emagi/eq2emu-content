--[[
    Script Name    : Spells/Brilliant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 11:04:53
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 4)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
