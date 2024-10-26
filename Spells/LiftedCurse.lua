--[[
    Script Name    : Spells/LiftedCurse.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.07 10:05:01
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 4, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

