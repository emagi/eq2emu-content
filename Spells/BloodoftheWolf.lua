--[[
    Script Name    : Spells/Commoner/BloodoftheWolf.lua
    Script Author  : image
    Script Date    : 2025/05/05
    Script Purpose : 
                   : 
--]]

--     Increases Speed of caster by 13.8%
function cast(Caster, Target, OutSpd)
    AddSpellBonus(Caster, 609, OutSpd)
end

function remove(Caster, Target)
    RemoveSpellBonus(Caster)
end
