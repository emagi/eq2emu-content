--[[
    Script Name    : Spells/Commoner/BogBully.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 04:05:17
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 0, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
