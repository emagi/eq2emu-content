--[[
    Script Name    : Spells/Commoner/Blind.lua
    Script Author  : terrible
    Script Date    : 2023.09.06 11:09:25
    Script Purpose : 
                   : 
--]]

--[[
 Applies Blind:
    1. Daze target
    2. Blur target
    3. Reduce movement of target
]]

function cast(Caster, Target, Snare)
    if not IsEpic(Target) then
        --Dazes the target
        AddControlEffect(Target, 3)
        BlurVision(Target, 1.0)
        SetSpellSnareValue(Target, Snare) 
        AddControlEffect(Target, 11)
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 3)
    BlurVision(Target, 0)
    RemoveControlEffect(Target, 11)
end