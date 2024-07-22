--[[
    Script Name    : Spells/Commoner/HonedBody.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 07:05:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end