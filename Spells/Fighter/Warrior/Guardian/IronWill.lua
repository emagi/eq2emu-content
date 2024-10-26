--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/IronWill.lua
    Script Author  : LordPazuzu
    Script Date    : 10/22/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Slow, Mit)
    AddSpellBonus(Target, 1, Sta)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
