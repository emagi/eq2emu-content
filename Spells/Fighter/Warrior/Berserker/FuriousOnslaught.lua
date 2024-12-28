--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/FuriousOnslaught.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, Haste, Defense)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10
    Berserk = MakeRandomInt(1,100)
    Spell = GetSpell(5172, GetSpellTier())

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    if LastSpellAttackHit() then
        if Berserk <= 10 then
        	SetSpellDataIndex(Spell, 0, Haste)
        	SetSpellDataIndex(Spell, 1, Defense)
			CastCustomSpell(Spell, Caster, Target)
		else 
		end
	end
 
end
