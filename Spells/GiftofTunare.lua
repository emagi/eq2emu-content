--[[
    Script Name    : Spells/GiftofTunare.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.09 03:05:44
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 3, 5)
end

function remove (Caster, Target)
    RemoveSpellBonus()
end


