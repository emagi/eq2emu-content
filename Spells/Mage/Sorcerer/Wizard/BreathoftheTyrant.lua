--[[
    Script Name    : Spells/Mage/Sorcerer/Wizard/BreathoftheTyrant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.05 11:11:51
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = math.floor((LvlBonus + StatBonus) * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
	SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

