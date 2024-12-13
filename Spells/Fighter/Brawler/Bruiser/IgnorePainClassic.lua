--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/IgnorePainClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:37
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    MaxHP = GetMaxHP(Caster)

    MinHeal = MaxHP * MinVal
    MaxHeal = MaxHP * MaxVal
    SpellHeal("Heal", MinHeal, MaxHeal)

end

