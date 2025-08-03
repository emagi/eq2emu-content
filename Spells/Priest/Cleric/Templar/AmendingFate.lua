--[[
    Script Name    : Spells/Priest/Cleric/Templar/AmendingFate.lua
    Script Author  : Image
    Script Date    : 2025.08.01 19:43:10
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*When target dies this spell will cast Fate of Healing on caster.  
	*Heals group members (AE) for 153

--]]

function cast(Caster, Target, MinHeal)
	-- handled on death
end

function remove(Caster, Target, Reason, MinHeal)
    if Reason == "target_dead" then
        local targets = GetGroup(Caster)
        if targets ~= nil then
            for k,v in ipairs(targets) do
                SpellHeal("Heal", MinHeal, MinHeal, v, 0, 0, "Fate of Healing")
            end
        else
            SpellHeal("Heal", MinHeal, MinHeal, Caster, 0, 0, "Fate of Healing")
        end
    end
end
