--[[
    Script Name    : Spells/Priest/Druid/Fury/Bristlepelt.lua
    Script Author  : Image
    Script Date    : 2025.08.03 20:31:05
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When damaged with a melee weapon this spell will cast Thornstorm on target's attacker.  
	*Inflicts 4 - 5 piercing damage on target encounter

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    AddProc(Target, 16, 100.0)
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal, 0, 0)

end

function remove(Caster, Target)
    RemoveProc(Target)
end
