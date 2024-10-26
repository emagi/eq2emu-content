--[[
    Script Name    : Spells/Commoner/GiftofInnothule.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.11 03:05:46
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 214, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

