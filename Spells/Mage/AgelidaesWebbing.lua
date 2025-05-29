--[[
    Script Name    : Spells/Mage/AgelidaesWebbing.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.28 08:05:58
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Dmg)
    SpellDamage(Target, 9, Dmg)
    AddControlEffect(Target, 5)
end

function tick(Caster, Target, Dmg)
    SpellDamage(Target, 9, Dmg)
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 5)
end
