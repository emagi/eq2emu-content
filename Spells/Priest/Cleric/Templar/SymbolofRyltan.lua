--[[
    Script Name    : Spells/Priest/Cleric/Templar/SymbolofRyltan.lua
    Script Author  : Image
    Script Date    : 2025.08.07 09:22:43
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STA of group members (AE) by 7.8
*Chance of Increasing Mitigation of group members (AE) vs physical damage by 338

--]]

function cast(Caster, Target, Amount, AmountDmg)
    AddSpellBonus(Target, 1, Amount)
    AddProc(Target, 15, 25.0)
end

function proc(Caster, Target, Type, Amount, AmountDmg)
    AddSpellBonus(Target, 200, AmountDmg) -- will override if we keep triggering proc
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end