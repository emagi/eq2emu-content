--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Dauntless.lua
    Script Author  : image
    Script Date    : 2025.01.25 12:01:42
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases Stamina of group members (AE) by x
*Increases Mitigation of group members (AE) vs physical damage by 342
*Adds small ward to accept damage until no damage left to absorb

--]]

function cast(Caster, Target, StaAmt, MitAmt, WardDamage)
    AddSpellBonus(Target, 1, StaAmt, 1)
    AddSpellBonus(Target, 200, MitAmt, 11, 21, 31)
    AddWard(WardDamage, 1, 1, 0, 100, 100)
end

function remove(Caster, Target, StaAmt, MitAmt, WardDamage)
    RemoveSpellBonus(Target)
end