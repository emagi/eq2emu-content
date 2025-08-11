--[[
    Script Name    : Spells/Scout/Bard/Troubador/Luckblade.lua
    Script Author  : Image
    Script Date    : 2025.08.10 16:05:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 106 - 178 melee damage on target
*Decreases INT of target by 22.5
*You must be sneaking to use this ability.

--]]

function precast(Caster, Target)
    if IsStealthed(Target) then
        return true
    end
    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end

function cast(Caster, Target, Amount, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 4, Amount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end
