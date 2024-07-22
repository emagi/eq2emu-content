--[[
    Script Name    : Spells/Insightful.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.28 05:04:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 4)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end
