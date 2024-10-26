--[[
    Script Name    : Spells/Commoner/SorelsWitheringLimbs.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.24 07:05:48
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BasePenalty)
    Level = GetLevel(Caster)
    SpellLevel = 10
    Mastery = SpellLevel + 10
    
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    LvlMod = LvlBonus * 0.2
    StrMod = BasePenalty - LvlMod
    
    AddSpellBonus(Target, 0, StrMod)
    AddSpellBonus(Target, 1, StrMod)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

