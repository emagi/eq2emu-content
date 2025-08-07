--[[
    Script Name    : Spells/Priest/Cleric/Templar/Protectorate.lua
    Script Author  : Image
    Script Date    : 2025.08.06 11:04:35
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases STR and WIS of target by 27.3

--]]

function cast(Caster, Target, Amount)
    AddSpellBonus(Target, 0, Amount)
    AddSpellBonus(Target, 3, Amount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
