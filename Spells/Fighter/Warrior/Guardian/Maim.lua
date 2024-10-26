--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Maim.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.10.22 10:10:05
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MaxDot, HasteMod)
    mastery(Caster, Target)
    
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddSpellBonus(Target, 617, HasteMod)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MaxDot)
    mastery(Caster, Target)
    
    DoTDmg = MaxDoT + DmgBonus
    
    SpellDamage(Target, DmgType, DoTDmg, DotDmg)
end

function mastery(Caster, Target)
    Level = GetLevel(Caster)
    SpellLevel = 28
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor((LvlBonus + StatBonus) * 2.5)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end

