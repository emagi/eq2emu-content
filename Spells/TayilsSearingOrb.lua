--[[
    Script Name    : Spells/TayilsSearingOrb.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.16 03:05:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, Debuff)
    damage(Caster, Target, MinVal, MaxVal)
    AddSpellBonus(Target, 201, Debuff)
    AddSpellBonus(Target, 202, Debuff)
    AddSpellBonus(Target, 203, Debuff)
end

function tick(Caster, Target, MinVal, MaxVal)
    damage(Caster, Target, MinVal, MaxVal)
end

function remove(Caster, Target, DoTType, MinVal, MaxVal)
    RemoveSpellBonus()
end

function damage(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus)
    MinDmg = MinVal + math.floor(DmgBonus)
    SpellDamage(Target, 3, MinDmg, MaxDmg)
end 

