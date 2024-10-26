--[[
    Script Name    : Spells/Fighter/Warrior/RallyingCry.lua
    Script Author  : neatz09
    Script Date    : 2020.01.02 03:01:02
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Mit)
    AddSpellBonus(Target, 200, Mit)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)

end

