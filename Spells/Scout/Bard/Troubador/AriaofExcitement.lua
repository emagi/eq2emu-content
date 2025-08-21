--[[
    Script Name    : Spells/Scout/Bard/Troubador/AriaofExcitement.lua
    Script Author  : Image
    Script Date    : 2025.08.10 15:06:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*On a hostile spell hit this spell has a 30% chance to cast Dissonant Note on target of spell.  
	*Inflicts 31 - 51 mental damage on target

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    AddProc(Target, 21, 30.0) -- proc type 21, when hostile spell attack attempted, 30% chance of this triggering
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal, 0, 0)
end

function remove(Caster, Target, Reason)
    RemoveProc(Target)
end