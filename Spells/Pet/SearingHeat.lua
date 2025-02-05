--[[
    Script Name    : Spells/Pet/SearingHeat.lua
    Script Author  : LordPazuzu
    Script Date    : 2025.02.03 04:02:57
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, DmgType, Dmg)
    SpellDamage(Target, DmgType, Dmg, Dmg)
end

function tick(Caster, Target, DmgType, Dmg)
    SpellDamage(Target, DmgType, Dmg, Dmg)
end

function remove(Caster, Target)

end