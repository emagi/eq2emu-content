--[[
    Script Name    : Spells/Fighter/Brawler/Monk/MendClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:08
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, NoxNotUsed, MinVal, MaxVal)
    MaxHP = GetMaxHP(Caster)

    MinHeal = MaxHP * MinVal
    MaxHeal = MaxHP * MaxVal
    SpellHeal("Heal", MinHeal, MaxHeal)

end
