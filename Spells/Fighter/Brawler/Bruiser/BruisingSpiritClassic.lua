--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/BruisingSpiritClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:09
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Mit)
    AddSpellBonus(Caster, 201, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end
