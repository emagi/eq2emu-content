--[[
    Script Name    : Spells/Mage/Sorcerer/BurningRadiance.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.11.23 09:11:13
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
	AddProc(Target, 3, 19) 
end

function proc(Caster, Target, Type, DmgType, MinVal, MaxVal)
    
    Spell = GetSpell(5436, GetSpellTier())
    Level = GetLevel(Caster)
    SpellLevel = 11
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
    else 
        LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus

	if Type == 3 then
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinDmg)
		SetSpellDataIndex(Spell, 2, MaxDmg)
		CastCustomSpell(Spell, Caster, Target)
	end
end




function remove(Caster, Target)
	RemoveProc(Target)
end