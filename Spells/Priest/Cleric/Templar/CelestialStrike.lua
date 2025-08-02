--[[
    Script Name    : Spells/Priest/Cleric/Templar/CelestialStrike.lua
    Script Author  : Image
    Script Date    : 2025.08.01 19:50:14
    Script Purpose : 
                   : 
--]]


--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 107 - 131 divine damage on target
*Inflicts 107 - 131 divine damage on target
	*If target is undead

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    if GetRaceBaseType(Target) == 333 then
        SpellDamage(Target, DmgType, MinVal, MaxVal)
    end
end

