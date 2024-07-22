--[[
    Script Name    : Spells/Commoner/ProtectionoftheLuckyCabbage.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.04 08:05:55
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    level = GetLevel(Caster)
    AddWard(math.ceil(level * 6.5), 1)
end

function remove(Caster, Target)
    RemoveWard()
end 

