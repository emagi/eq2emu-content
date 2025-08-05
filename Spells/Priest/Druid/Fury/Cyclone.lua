--[[
    Script Name    : Spells/Priest/Druid/Fury/Cyclone.lua
    Script Author  : Image
    Script Date    : 2025.08.04 10:31:44
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 32 - 39 cold damage on target instantly and every 2 seconds
*Inflicts 32 - 39 cold damage on target instantly and every 2 seconds
	*If target is elemental

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    if GetRaceBaseType(Target) == 250 then
        SpellDamage(Target, DmgType, MinVal, MaxVal)
    end
end