--[[
    Script Name    : Spells/Priest/Druid/Fury/MarkoftheHunt.lua
    Script Author  : Image
    Script Date    : 2025.08.20 09:31:11
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STA of group members (AE) by 7.8
*Increases Out of Combat Health Regen of Target by 5.
*Increases out of Combat Run Speed of Target by 3%.

--]]


function cast(Caster, Target, Amount, RegenAmt)
    AddSpellBonus(Target, 1, Amount)
    AddSpellBonus(Target, 602, RegenAmt)
    AddSpellBonus(Target, 609, 3)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
