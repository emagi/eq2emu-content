--[[
    Script Name    : Spells/Mage/Sorcerer/FreezingWhorl.lua
    Script Author  : neatz09
    Script Date    : 2020.11.05 02:11:50
    Script Purpose : 
                   : 
--]]

-- Inflicts 5 - 10 cold damage on target instantly and every 4 seconds
-- Decreases Mitigation of target vs elemental damage by 133

function cast(Caster, Target, DmgType, MinVal, MaxVal, Mit)
    
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
	AddSpellBonus(Target, 201, Mit)
	AddSpellBonus(Target, 207, Mit)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal)
    
    Level = GetLevel(Caster)
    SpellLevel = 13
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end