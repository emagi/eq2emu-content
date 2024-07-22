--[[
    Script Name    : Spells/RenicsHealthburst.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 02:05:52
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
end

