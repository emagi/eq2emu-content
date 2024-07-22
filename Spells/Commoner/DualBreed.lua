--[[
    Script Name    : Spells/Commoner/DualBreed.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.03 04:05:10
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    PowerBonus = math.ceil(GetMaxPowerBase(Caster) * 0.03)
    AddSpellBonus(Caster, 1, 2)
    AddSpellBonus(Caster, 501, PowerBonus)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end