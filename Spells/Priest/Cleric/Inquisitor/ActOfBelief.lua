--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ActOfBelief.lua
    Script Author  : image
    Script Date    : 2025.01.25 02:01:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*On any combat or spell hit this spell may cast Strike of Faith on target of attack.  Each ally will only deal this additional damage once. 
	*Inflicts 83 divine damage on target

--]]


function cast(Caster, Target, DmgType, Dmg)
	AddProc(Target, 1, 1.7, nil, 1)
end

function proc(Caster, Target, Type, DmgType, Dmg)
	ProcDamage(Caster, Target, "Strike of Faith", DmgType, Dmg)
	RemoveProc(Target)
end

function remove(Caster, Target)
	RemoveProc(Target)
end