--[[
    Script Name    : Spells/VanstedsStrengtheningResolve.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.22 02:05:56
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Sta, Mit)
    Level = GetLevel(Caster)
    SpellLevel =  10
    Mastery = SpellLevel + 10
    StatBonus = GetWis(Caster) / 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    StaBonus= math.floor(LvlBonus * 0.1 + Sta)
    MitBonus = LvlBonus + StatBonus
    TotalMit = Mit + math.floor(MitBonus)
    
    AddSpellBonus(Target, 1, StaBonus)
    AddSpellBonus(Target, 0, StaBonus)
    AddSpellBonus(Target, 200, TotalMit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

