--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Depravity.lua
    Script Author  : image
    Script Date    : 2025.01.25 07:01:41
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Decreases INT and STR of target by 24.3

--]]



require "Spells/Generic/SpellCalcs"

function cast(Caster, Target, DebuffVal)
    DebuffVal = CalculateRateValue(Caster, Target, GetSpellRequiredLevel(Caster), GetLevel(Caster), -1.25, DebuffVal)
    AddSpellBonus(Target, 0, DebuffVal) -- STR
    AddSpellBonus(Target, 4, DebuffVal) -- INT
end

function remove(Caster, Target)
    RemoveSpellBonus()
end