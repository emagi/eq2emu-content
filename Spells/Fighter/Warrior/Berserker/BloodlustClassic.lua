--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BloodlustClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 09:11:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Offense, Haste, Defense)
    AddSkillBonus(Target, GetSkillIDByName("Slashing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Crushing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Piercing"), Offense)
    AddSkillBonus(Target, GetSkillIDByName("Ranged"), Offense)
    AddProc(Target, 15, 10) 

end

function proc(Caster, Target, Type, Haste, Defense)
Spell = GetSpell(5172, GetSpellTier())
	if Type == 15 then
		SetSpellDataIndex(Spell, 0, Haste)
		SetSpellDataIndex(Spell, 1, Defense)
		CastCustomSpell(Spell, Caster, Target)
	end
end

function remove(Caster, Target)
    RemoveProc(Target)
end 
