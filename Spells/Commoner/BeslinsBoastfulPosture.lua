--[[
    Script Name    : Spells/Commoner/BeslinsBoastfulPosture.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.30 03:05:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, BonusAmt)
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
    
    AddHate(Caster, Target, math.random(MinHate, MaxHate),1)
    AddSpellBonus(Target, 617, BonusAmt)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
