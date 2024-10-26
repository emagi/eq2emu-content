--[[
    Script Name    : Spells/HerionsChallenge.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.30 08:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    HateBonus = LvlBonus * 2
    MaxHate = MaxVal + HateBonus
    MinHate = MinVal + HateBonus
    AddHate(Caster, Target, math.random(MinHate,MaxHate),1)
end
