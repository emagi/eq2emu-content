--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/MinistersStrength.lua
    Script Author  : image
    Script Date    : 2025.01.19 03:01:43
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target, MeleeDmg)
    AddSpellBonus(Target, 313, MeleeDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end