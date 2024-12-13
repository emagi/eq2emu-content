--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/Haymaker.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:45
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 30
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 3.0)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then 
		CastSpell(Target, 5001, GetSpellTier())
	end
end


