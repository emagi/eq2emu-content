--[[
    Script Name    : Spells/Fighter/Brawler/Monk/HandClap.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:54
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 22
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    HateBonus = LvlBonus * 2
    MaxHate = MaxVal + HateBonus
    MinHate = MinVal + HateBonus
    AddHate(Caster, Target, math.random(MinHate,MaxHate),1)
    Interrupt(Target)
    
end

