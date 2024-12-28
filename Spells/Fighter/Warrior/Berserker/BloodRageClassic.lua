--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/BloodRageClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.12.23 07:12:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Pct, DmgType, MinVal, MaxVal, HealthCost)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    AddProc(Caster, 1, Pct)

end

function proc(Caster, Target, Type, DmgType, MinDmg, MaxDmg)
    if Type == 1 then
	    Spell = GetSpell(40300, GetSpellTier())
		SetSpellDataIndex(Spell, 0, DmgType)
		SetSpellDataIndex(Spell, 1, MinDmg)
		SetSpellDataIndex(Spell, 2, MaxDmg)
		CastCustomSpell(Spell, Caster, Target)
	end
end

function tick(Caster, Target, HealthCost)
    if GetHP(Caster) >= (HealthCost * -1) then
        ModifyHP(Caster, HealthCost)
    elseif GetHP(Caster) < (HealthCost * -1) then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveProc()
end 

