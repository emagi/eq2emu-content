--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Redemption.lua
    Script Author  : neatz09
    Script Date    : 2020.03.02 07:03:07
    Script Purpose : 
                   : 
--]]

-- Info from spell_display_effects (remove from script when done)
-- On death this spell will cast Redemption on caster.  Lasts for 36.0 seconds.  
--     Heals target for 512
--     Increases Max Health of target by 362.5
--     Grants a total of 1 trigger of the spell.


function cast(Caster, Target, HealAmt, MaxHealthAmt)
	AddProc(Target, 13, 100.0)
end

function proc(Caster, Target, Type, HealAmt, MaxHealthAmt)
	SpellHeal("heal", HealAmt, HealAmt, Target, 0, 0, "Redemption")
	SetMaxHP(Target, GetMaxHP(Target) + MaxHealthAmt)
	RemoveProc(Target)
end

function remove(Caster, Target)
	RemoveProc(Target)
	RemoveSpellBonus(Target)
end