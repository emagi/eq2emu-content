--[[
    Script Name    : Spells/Scout/Bard/Dirge/CryoftheDeparted.lua
    Script Author  : Image
    Script Date    : 2025.08.10 09:07:35
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 61 - 101 disease damage on target
*Heals caster for 40 - 67

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHeal, MaxHeal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    SpellHeal("Heal", MinHeal, MaxHeal, Caster)
end
