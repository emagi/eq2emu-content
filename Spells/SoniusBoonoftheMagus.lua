--[[
    Script Name    : Spells/SoniusBoonoftheMagus.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.17 02:05:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Pwr, Hp, Mit)
    AddSpellBonus(Target, 501, Pwr)
    AddSpellBonus(Target, 500, Hp)
    AddSpellBonus(Target, 203, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

