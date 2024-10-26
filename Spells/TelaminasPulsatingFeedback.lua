--[[
    Script Name    : Spells/TelaminasPulsatingFeedback.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.17 02:05:18
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal, Snare)
    damage(Caster, Target, MinVal, MaxVal)
    SetSpellSnareValue(Target, Snare) 
    AddControlEffect(Target, 11)
end

function tick(Caster, Target, MinVal, MaxVal)
    damage(Caster, Target, MinVal, MaxVal)
end

function remove(Caster, Target)
    SetInfoStructString(Target, "visual_state", "0")
    SpawnSet(Target,"visual_state",0)
    RemoveControlEffect(Target, 11)
end

function damage(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = 20
    StatBonus = GetInt(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    DmgBonus = LvlBonus + StatBonus
    MaxDmg = MaxVal + math.floor(DmgBonus * 2)
    MinDmg = MinVal + math.floor(DmgBonus * 2)
    SpellDamage(Target, 3, MinDmg, MaxDmg)
    SpawnSet(Target,"visual_state",626)
end 
