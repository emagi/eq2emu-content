--[[
    Script Name    : Spells/EmbraceofHate.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 04:05:04
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddWard(math.ceil(level * 6.5), 2, 5)
end

function remove(Caster, Target)
    RemoveWard()
end 
