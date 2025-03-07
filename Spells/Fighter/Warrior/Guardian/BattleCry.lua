--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/BattleCry.lua
    Script Author  : LordPazuzu
    Script Date    : 10/5/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Mit, Sta)
    AddSpellBonus(Target, 200, Mit)
    AddSpellBonus(Target, 1, Sta)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

