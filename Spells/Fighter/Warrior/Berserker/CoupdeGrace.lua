--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/CoupdeGrace.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 04:11:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Haste, Defense)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 14, 100) 
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