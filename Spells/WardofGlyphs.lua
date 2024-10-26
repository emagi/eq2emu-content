--[[
    Script Name    : Spells/WardofGlyphs.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.05.10 04:05:41
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
