--[[
    Script Name    : Spells/Scout/Bard/TaffosBrilliantBlade.lua
    Script Author  : neatz09
    Script Date    : 2020.11.06 06:11:29
    Script Purpose : 
                   : 
--]]

-- Inflicts 52 - 87 melee damage on target
-- Decreases power of target by 20 - 33
-- Must be flanking or behind
function precast(Caster,Target)
	if not IsFlanking(Caster, Target) and not IsBehind(Caster, Target) then
        SendMessage(Caster, "Must be flanking or behind", "yellow")
        return 0
				else
	    return true
	end
end

function cast(Caster, Target, DmgType, MinVal, MaxVal, MinHeal, MaxHeal)
	SpellDamage(Target, DmgType, MinVal, MaxVal)
end