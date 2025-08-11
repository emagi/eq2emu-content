--[[
    Script Name    : Spells/Scout/Bard/Troubador/ClassicDeafeningStrike.lua
    Script Author  : Image
    Script Date    : 2025.08.10 15:58:21
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 56 - 93 mental damage on target
*Decreases power of target by 52 - 87
*Increases power of caster by 31 - 52

--]]


function cast(Caster, Target, DmgType, MinVal, MaxVal, MinDecrease, MaxDecrease, MinIncrease, MaxIncrease)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    local decrease = MakeRandomInt(MinDecrease, MaxDecrease)
    local increase = MakeRandomInt(MinIncrease, MaxIncrease)
    AddSpellBonus(Target, 501, decrease)
    AddSpellBonus(Caster, 501, increase)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
    RemoveSpellBonus(Caster)
end
