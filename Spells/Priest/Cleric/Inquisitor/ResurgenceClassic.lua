--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/ResurgenceClassic.lua
    Script Author  : image
    Script Date    : 2025.01.26 01:01:40
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Applies Reforming Soul on termination.  Lasts for 1 minute.
	*Heals target for 25.0% of max health
		*This effect cannot be critically applied.
	*Increases Mitigation of target vs elemental, noxious and arcane damage by 360
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

function precast(Caster)
    if GetInfoStructUInt(Caster, "engaged_encounter") == 1 then
        return false, 12
    end
    
    return true
end

function cast(Target, Player)
    Resurrect(15, 15, 1, nil, "", 0, 0, 2550531, 1)
end