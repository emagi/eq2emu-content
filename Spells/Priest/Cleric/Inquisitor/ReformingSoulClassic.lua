--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ReformingSoulClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.14 03:11:35
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Applies Reforming Soul on termination.  Lasts for 1 minute.
	*Heals target for 25.0% of max health
		*This effect cannot be critically applied.
	*Increases Mitigation of target vs elemental, noxious and arcane damage by 220
*Applies Revived Sickness on termination.  Lasts for 2 minutes.
	*Decreases All Attributes of target by 20.0%
		*If not between levels 1 - 6
	*Decreases Haste of target by 20.0
		*If not between levels 1 - 6
	*Decreases All Attributes of target by 5.0%
		*If between levels 1 - 6
	*Decreases Haste of target by 5.0
		*If between levels 1 - 6
*Resurrects target with 15% health and power
*If outside an arena
		*If between levels 1 - 6
*If outside an arena

--]]


function cast(Caster, Target)
    Resurrect(15, 15, 1, nil, "", 0, 0, 2550531, 1)
end
