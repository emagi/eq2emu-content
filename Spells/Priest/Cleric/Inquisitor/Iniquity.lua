--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Iniquity.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:26
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases INT and STR of target by 15.0

--]]

require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DebuffVal)
    DebuffVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -0.5, DebuffVal)
    AddSpellBonus(Target, 0, DebuffVal) -- STR
    AddSpellBonus(Target, 4, DebuffVal) -- INT
end

function remove(Caster, Target)
    RemoveSpellBonus()
end