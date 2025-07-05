function cast(Caster, Target, Regen, HP, STR)
	AddSpellBonus(Target, 603, Regen)
	AddSpellBonus(Target, 606, HP)
	AddSpellBonus(Target, 0, STR)
end

function remove(Caster, Target)
	RemoveSpellBonus(Target)
end