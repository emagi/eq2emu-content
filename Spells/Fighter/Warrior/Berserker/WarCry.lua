--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/WarCry.lua
    Script Author  : neatz09
    Script Date    : 2020.02.29 01:02:41
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Haste, Defense)
	AddProc(Target, 1, 12.5) --Combat
	AddProc(Target, 15, 5) --Damaged
	AddProc(Target, 14, 50) --Kill
end


function proc(Caster, Target, Type, Haste, Defense)
Spell = GetSpell(5172, GetSpellTier())
	if Type == 1 or Type == 15 or Type == 14 then
		SetSpellDataIndex(Spell, 0, Haste)
		SetSpellDataIndex(Spell, 1, Defense)
		CastCustomSpell(Spell, Caster, Target)
	end
end


function remove(Caster, Target)
    RemoveProc(Target)
end


function remove(Caster, Target)
RemoveProc(Target)
end