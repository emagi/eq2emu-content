--[[
    Script Name    : Spells/Scout/Bard/Dirge/ClassicExcruciatingScream.lua
    Script Author  : Image
    Script Date    : 2025.08.10 08:58:22
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 48 - 80 disease damage on target
*Dazes target
	*If Target is not Epic
*Resistibility increases against targets higher than level 29.

--]]

function cast(Caster, Target, DmgType, MinVal, MaxVal)
    if not IsEpic(Target) then
        AddControlEffect(Target, 3)
    end
end

function remove(Caster, Target, Reason, DmgType, MinVal, MaxVal)
    SpellDamage(Target, DmgType, MinVal, MaxVal)
    RemoveControlEffect(Target, 3)
end
