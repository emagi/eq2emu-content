--[[
    Script Name    : Spells/Fighter/Warrior/Guardian/Ruin.lua
    Script Author  : LordPazuzu
    Script Date    : 10/5/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 25
    Mastery = SpellLevel + 25
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MinDmg = MinVal + math.floor(DmgBonus * 2.5)
    MaxDmg = MaxVal + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, 0, MinDmg, MaxDmg)

-- Decreases Slashing, Crushing and Piercing of target.
    if LastSpellAttackHit() then
        AddSkillBonus(Target, GetSkillIDByName("Slashing"), SkillAmt)
        AddSkillBonus(Target, GetSkillIDByName("Crushing"), SkillAmt)
        AddSkillBonus(Target, GetSkillIDByName("Piercing"), SkillAmt)
    end
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, DoTMin, DoTMax, SkillAmt)
    Level = GetLevel(Caster)
    SpellLevel = 25
    Mastery = SpellLevel + 25
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MinDoTDmg = DoTMin + math.floor(DmgBonus * 2.5)
    MaxDoTDmg = DoTMax + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, 0, DoTMin, DoTMax)
end


function remove(Caster, Target)
    RemoveSkillBonus(Target)
end