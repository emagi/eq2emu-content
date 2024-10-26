--[[
    Script Name    : Spells/AldaladsMendingChant.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.24 07:05:25
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, SpellLevel)
    Level = GetLevel(Caster)
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = LvlBonus + StatBonus
    MinHeal = MinVal + math.floor(HealBonus)
    MaxHeal = MaxVal + math.floor(HealBonus)
    
    SpellHeal("Heal", MinHeal, MaxHeal)
    CureByType(1, 1, "", (Level * 1.08) + 1)
end

