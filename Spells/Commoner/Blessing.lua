--[[
    Script Name    : Spells/Commoner/Blessing.lua
    Script Author  : image
    Script Date    : 2025.08.07 11:08:56
    Script Purpose : Per https://web.archive.org/web/20050829124530/http://eq2.ogaming.com/db/abilities/Blessing.php
     "From what i see, it does nothing exept a light effect on a group party member that lasts about 2 seconds. total waste of 57 sp. ""
     
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)


--]]

function precast(Caster, Target)
    local targets = GetGroup(Caster)
    if targets ~= nil then
        for k,v in ipairs(targets) do
            if GetID(Target) == GetID(v) then
                    return true
                end
            end
        end
    end
    return false, 38
end

function cast(Caster, Target)
    ApplySpellVisual(Target,148)
end