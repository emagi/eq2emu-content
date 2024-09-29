--[[
    Script Name    : Spells/Scout/Rogue/Swashbuckler/Shanghai.lua
    Script Author  : Jabantiz
    Script Date    : 2013.12.15 08:12:20
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
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2.5)
    MinDmg = MinVal + math.floor(DmgBonus * 2.5)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)


    -- Applies Knockdown on termination.  Lasts for 2.5 seconds.
    --     Blurs vision of target
    --     Throws target back
    --     Stuns target
    --     Does not affect Epic targets
    if not IsEpic(Target) then
        Knockdown(Target, Caster, 2500)
        AddControlEffect(Target, 4)
        BlurVision(Target, 1.0)
        AddSpellTimer(2500, "RemoveEffects")
    end
end

function RemoveEffects(Caster, Target)
    RemoveControlEffect(Target, 4)
    BlurVision(Target, 0)
end

