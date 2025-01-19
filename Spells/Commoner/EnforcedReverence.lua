--[[
    Script Name    : Spells/Commoner/EnforcedReverence.lua
    Script Author  : image
    Script Date    : 2025.01.19 04:01:31
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]


function cast(Caster, Target)
    
    local targets = GetGroup(Caster)
    if targets ~= nil then
    	for k,v in ipairs(targets) do
    	    if GetID(Target) == GetID(v) then
                PlayAnimation(v, 229)
            end
        end
    elseif GetID(Caster) == GetID(Target) then
        PlayAnimation(Target, 229)
    end
end