--[[
    Script Name    : Spells/Commoner/Pounce.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.05.28 09:05:52
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, MinVal, MaxVal)
    SpellDamage(Target, 0, MinVal, MaxVal)
    CastSpell(Target, 5001, GetSpellTier())

end
