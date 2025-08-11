--[[
    Script Name    : Spells/Scout/Bard/Dirge/MisfortunesKissClassic.lua
    Script Author  : Image
    Script Date    : 2025.08.10 09:32:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 106 - 178 melee damage on target
*Decreases WIS of target by 15.0
*You must be sneaking to use this ability.

--]]

function precast(Caster, Target)
    -- You must be sneaking to use this ability.
    if IsStealthed(Caster) then
        return true
    end

    SendMessage(Caster, "You must be sneaking to use this ability.", "yellow")
    return false
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, Amount)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    AddSpellBonus(Target, 3, Amount)
end

function remove(Caster, Target)
    RemoveSpellBonus(Target)
end

