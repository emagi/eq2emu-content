--[[
    Script Name    : Spells/CaskinsRingingSwipe.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.28 03:05:38
    Script Purpose : 
                   : 
--]]

function precast(Caster,Target)
	if not IsFlanking(Caster, Target) and not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return false
	end
	return true
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinDoT, MaxDoT)
    bonuses(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinDoT, MaxDoT)
    
    MaxDmg = MaxVal + math.floor(DmgBonus * 2)
    MinDmg = MinVal + math.floor(DmgBonus * 2)
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
end

function tick(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinDoT, MaxDoT)
    bonuses(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinDoT, MaxDoT)
    
    MaxDoTDmg = MaxDoT + math.floor(DmgBonus * 2)
    MinDoTDmg = MinDoT + math.floor(DmgBonus * 2)
    
    SpellDamage(Target, DoTType, MinDoTDmg, MaxDoTDmg)
end

function bonuses(Caster, Target, DmgType, MinVal, MaxVal, DoTType, MinDoT, MaxDoT)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    StatBonus = GetStr(Caster) / 10
        
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = LvlBonus + StatBonus
end

function remove(Caster, Target)
    
end