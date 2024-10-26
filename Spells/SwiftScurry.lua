--[[
    Script Name    : Spells/SwiftScurry.lua
    Script Author  : neatz09
    Script Date    : 2020.08.14 03:08:33
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddSpellBonus(Caster, 696, 2)
end

function remove(Caster, Target)
    RemoveSpellBonus()
end 

