--[[
    Script Name    : Spells/KeliansHealingSpirit.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.24 07:05:16
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel= 10
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = MinVal + math.floor(HealBonus * 2)
    MaxHeal = MaxVal + math.floor(HealBonus * 2)
    
    SpellHeal("Heal", MinHeal, MaxHeal)
    CureByType(1, 3, "", (Level * 1.08) + 1)
end

