--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/ShoutingCry.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.03 04:10:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 22
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    HateBonus = math.floor(LvlBonus * 2.5)
    MaxHate = MaxVal + HateBonus
    MinHate = MinVal + HateBonus
    AddHate(Caster, Target, math.random(MinHate,MaxHate),1)
    
end

