--[[
    Script Name    : Spells/Commoner/NaturalAcrobat.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.15 01:05:31
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 2, 5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
