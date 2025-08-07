--[[
    Script Name    : Spells/Commoner/FaithRespect.lua
    Script Author  : image
    Script Date    : 2025.08.06 02:08:49
    Script Purpose : Forces a targetted group member to bow if their level is lower than the Caster
                   : 
--]]

function precast(Caster, Target)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            if GetID(Target) == GetID(v) then
                if GetLevel(v) < GetLevel(Caster) then
                    return true
                else
                    break
                end
            end
        end
    end
    return false, 38
end

function cast(Caster, Target)
    PlayAnimationString(Target, "bow", nil, true)
end
