--[[
    Script Name    : Spells/Commoner/DetectEvil.lua
    Script Author  : image
    Script Date    : 2025.08.06 03:08:53
    Script Purpose : Provide spell visual if it is a "evil" alignment player (0), good is (1)
                   : 
--]]

function cast(Caster, Target)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            if GetAlignment(Target) == 0 and GetID(Target) == GetID(v) then
                ApplySpellVisual(v,136)
            end
        end
    elseif GetAlignment(Target) == 0 and GetID(Caster) == GetID(Target) then
        ApplySpellVisual(Target,136)
    end
end