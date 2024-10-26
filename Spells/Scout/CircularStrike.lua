--[[
    Script Name    : Spells/Scout/CircularStrike.lua
    Script Author  : LordPazuzu
    Script Date    : 1/3/2023
    Script Purpose : 
                   : 
--]]

-- Interrupts targets in Area of Effect
-- Inflicts 38 - 64 melee damage on targets in Area of Effect

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 14
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2)
    MinDmg = MinVal + math.floor(DmgBonus * 2)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
		if LastSpellAttackHit() then
			Interrupt(Caster, Target)
		end
end