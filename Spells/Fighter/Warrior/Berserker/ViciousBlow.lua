--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/ViciousBlow.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.07 04:11:40
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, TickVal, Haste, Defense)
    Berserk = MakeRandomFloat(1.0,100.0)
    Spell = GetSpell(5172, GetSpellTier())
    
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    
    if LastSpellAttackHit() then
        if Berserk <= 12.5 then
        	SetSpellDataIndex(Spell, 0, Haste)
        	SetSpellDataIndex(Spell, 1, Defense)
			CastCustomSpell(Spell, Caster, Target)
		else 
		end
	end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, TickVal)
    SpellDamage(Target, DmgType, TickVal, TickVal)
end
