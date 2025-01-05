--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/PenitentsSermon.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 08:11:02
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals group members (AE) for 205 - 251

--]]

function cast(Caster, Target, MinVal, MaxVal)
    Level = GetLevel(Caster)
    SpellLevel = 30
    Mastery = SpellLevel + 10
  
    if Level < Mastery then
        LvlBonus = Level - SpellLevel
        else LvlBonus = Mastery - SpellLevel
    end

    HealBonus = math.floor(LvlBonus * 2.5)
    MinHeal = MinVal + HealBonus
    MaxHeal = MaxVal + HealBonus
    
    SpellHeal("Heal", MinHeal, MaxHeal)
end