--[[
    Script Name    : Spells/Commoner/UnholyFear.lua
    Script Author  : image
    Script Date    : 2025.01.10 08:01:36
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]


function cast(Caster, Target)
    local targets = GetSpellTargets()
	for k,v in ipairs(targets) do
        if GetLevel(v) < GetLevel(Caster) then
            PlayAnimationString(v, "cringe", nil, true)
        end
    end
end