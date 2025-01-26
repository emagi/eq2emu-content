--[[
    Script Name    : Spells/Commoner/DetectGood.lua
    Script Author  : image
    Script Date    : 2025.01.25 02:01:15
    Script Purpose : Provide spell visual if it is a "good" alignment player (1), evil is (0)
                   : 
--]]

function cast(Caster, Target)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            if GetAlignment(Target) == 1 and GetID(Target) == GetID(v) then
                ApplySpellVisual(v,136)
            end
        end
    elseif GetAlignment(Target) == 1 and GetID(Caster) == GetID(Target) then
        ApplySpellVisual(Target,136)
    end
end