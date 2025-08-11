--[[
    Script Name    : Spells/Scout/Bard/Dirge/CryptsQuiet.lua
    Script Author  : Image
    Script Date    : 2025.08.10 09:15:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*On a combat hit this spell has a 12% chance to cast Crypt's Revenge on target of attack.  
	*Inflicts 30 - 51 disease damage on target

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal)
    AddProc(Target, 3, 12.0, nil, 1) -- type 3 is proc_type_physical_offensive only on successful damage, 5th argument is 1 to apply all group members
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal, 0, 0)
end