--[[
    Script Name    : Spells/InnoruuksCauldron.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 07:05:29
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    MaxPower = GetMaxPower(Caster)
    AddSpellBonus(Caster, 501, math.ceil(MaxPower * 0.03))
end

function remove (Caster, Target)
    RemoveSpellBonus()
end

