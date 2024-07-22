--[[
    Script Name    : Spells/SummonWisp.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:11
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    Pet = SummonPet(Caster, 8350012)
end

function remove(Caster, Target)
    DismissPet(Pet)
end 
