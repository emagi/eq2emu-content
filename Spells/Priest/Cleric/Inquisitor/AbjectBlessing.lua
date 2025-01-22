--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/AbjectBlessing.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:52
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STA of target by 23.4
*Increases Melee Damage of target by 12.8

--]]

function cast(Caster, Target, Sta, MeleeDmg)
    AddSpellBonus(Target, 1, Sta)
    AddSpellBonus(Target, 313, MeleeDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end