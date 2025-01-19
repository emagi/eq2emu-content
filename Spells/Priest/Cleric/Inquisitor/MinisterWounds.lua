--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/MinisterWounds.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:01
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 187 - 229

--]]

function cast(Caster, Target, MinHeal, MaxHeal)
    SpellHeal("Heal", MinHeal, MaxHeal)
    CastSpell(Target, 140209, GetSpellTier())
end