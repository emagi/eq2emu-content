--[[
    Script Name    : Spells/Scout/Bard/Troubador/DeafeningMissile.lua
    Script Author  : Image
    Script Date    : 2025.08.14 08:29:12
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Inflicts 49 - 82 mental damage on target
*Inflicts 49 - 82 mental damage on target
*Stifles target
	*If Target is not Epic
*If weapon equipped in Ranged
*Resistibility increases against targets higher than level 29.

--]]

function precast(Caster, Target)
    local item = GetEquippedItemBySlot(Caster, 16)
    if item ~= nil and GetItemType(item) == 2 then
        return true
    end
    return false, 38
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, DmgType2, MinVal2, MaxVal2)
    if SpellDamage(Target, DmgType, MinVal, MaxVal) == 1 then
		if SpellDamage(Target, DmgType2, MinVal2, MaxVal2) == 1 and not IsEpic(Target) then
			AddControlEffect(Target, 2)
		end
	end
end

