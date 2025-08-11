--[[
    Script Name    : Spells/Scout/Bard/Dirge/ClassicDolefulThrust.lua
    Script Author  : Image
    Script Date    : 2025.08.10 08:52:32
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 56 - 93 melee damage on target
*Heals caster for 37

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHeal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    SpellHeal("Heal", MinHeal, MinHeal, Caster)
end
