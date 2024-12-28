--[[
    Script Name    : Spells/Fighter/Warrior/Berserker/EnrageClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.06 01:11:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, Haste, Defense)
    Berserk = MakeRandomInt(1,100)
    Spell = GetSpell(5172, GetSpellTier())

    AddHate(Caster, Target, math.random(MinVal,MaxVal),1)
    if Berserk <= 10 then
        SetSpellDataIndex(Spell, 0, Haste)
        SetSpellDataIndex(Spell, 1, Defense)
		CastCustomSpell(Spell, Caster, Target)
	else 
	end
    
end

