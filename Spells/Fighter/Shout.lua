--[[
    Script Name    : Spells/Fighter/Shout.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:00
    Script Purpose : 
                   : 
--]]

-- Increases Threat to target encounter by 350 - 427 
function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 8
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
