--[[
    Script Name    : Spells/Scout/Bard/Dirge/DeathsScent.lua
    Script Author  : Image
    Script Date    : 2025.08.14 09:27:53
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Increases AGI of caster by 32.9
*Increases Mitigation of caster vs disease damage by 379

--]]


function cast(Caster, Target, Agi, VsOther)
    AddSpellBonus(Target, 2, Agi)
    AddSpellBonus(Target, 214, VsOther)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

