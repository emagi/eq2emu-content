--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Havoc.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Mit, Str)
    AddSpellBonus(Target, 200, Mit)
    AddSpellBonus(Target, 0, Str)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end



