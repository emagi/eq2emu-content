--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Shanghai.lua
    Script Author  : LordPazuzu
    Script Date    : 12/4/2024
    Script Purpose : 
                   : 
--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    return IsStealthed(Caster)
end

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 21
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MinDmg = MinVal + DmgBonus
    MaxDmg = MaxVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    
    if not IsEpic(Target) then
        Knockdown(Target, Caster, 2500)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
    end
end

function remove(Caster, Target)
    if not IsEpic(Target) then
        RemoveControlEffect(Target, 4)
        BlurVision(Target, 0.0)
    end
end

