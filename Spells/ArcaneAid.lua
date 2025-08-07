--[[
    Script Name    : Spells/ArcaneAid.lua
    Script Author  : image
    Script Date    : 2025.08.06 04:08:04
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, Amt)
    CureByType(1, 2, "", (GetLevel(Caster) * 1.08) + 1)
    AddSpellBonus(Target, 203, Amt)
end

function remove(Caster, Target, Reason, Amt)
    RemoveSpellBonus(Target)
end