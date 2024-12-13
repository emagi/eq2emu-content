--[[
    Script Name    : Spells/Fighter/Brawler/Monk/FaceoftheMountain.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 03:11:22
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, BonusAmt)
    AddControlEffect(Caster, 5)
    AddSpellBonus(Caster, 200, BonusAmt)
end


function remove(Caster, Target)
    RemoveControlEffect(Caster, 5)
    RemoveSpellBonus(Caster)
end
