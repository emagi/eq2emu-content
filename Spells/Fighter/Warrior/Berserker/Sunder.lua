--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/Sunder.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:12
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Hate)
    Level = GetLevel(Caster)
    SpellLevel = 23
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor((LvlBonus + StatBonus) * 2.5)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddHate(Caster, Target, Hate, 1)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end

end