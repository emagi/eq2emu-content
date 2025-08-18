--[[
    Script Name    : Spells/Priest/Druid/Fury/FierceRousingClassic.lua
    Script Author  : Image
    Script Date    : 2025.08.17 13:47:00
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Applies Awakening on termination.
	*Heals target for 15.0% of max health
		*This effect cannot be critically applied.
*Applies Revived Sickness on termination.  Lasts for 2 minutes.
	*Decreases Haste of target by 20.0
		*If not between levels 1 - 6
	*Decreases All Attributes of target by 20.0%
		*If not between levels 1 - 6
	*Decreases Haste of target by 5.0
		*If between levels 1 - 6
	*Decreases All Attributes of target by 5.0%
		*If between levels 1 - 6
*Resurrects target with 15% health and power
*Resurrects target with Fae Fire like buff to damage target if they are attacked
*If outside an arena
*If outside an arena

--]]

function cast(Caster, Target)
    Resurrect(15, 15, 1, nil, "", 0, 0, 170210, 1)
end
