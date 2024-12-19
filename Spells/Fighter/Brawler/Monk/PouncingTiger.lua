--[[
    Script Name    : Spells/Fighter/Brawler/Monk/PouncingTiger.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:35
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal, AgiMod)
    Level = GetLevel(Caster)
    SpellLevel = 29
    Mastery = SpellLevel + 10

    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end
    
    DmgBonus = math.floor(LvlBonus * 2.5)
    MaxDmg = MaxVal + DmgBonus
    MinDmg = MinVal + DmgBonus
    
    SpellDamage(Target, DmgType, MinDmg, MaxDmg)
    AddSpellBonus(Target, 2, AgiMod)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 
