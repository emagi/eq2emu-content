--[[
    Script Name    : Spells/Tough.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.04.30 10:04:59
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddSpellBonus(Caster, 204, math.floor(level * 2.5))
    Say(Caster, "Placeholder resist calculation")
end

function remove (Caster, Target)
    RemoveSpellBonus()
end