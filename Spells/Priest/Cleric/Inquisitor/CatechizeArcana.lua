--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/CatechizeArcana.lua
    Script Author  : image
    Script Date    : 2025.01.24 03:01:59
    Script Purpose : 
                   : 
--]]


function cast(Caster, Target)
    local level = ((GetLevel(Caster) * 1.08) + 1)
    CureByType(1, 2, "", level)
    CureByType(1, 6, "", level)
    AddProc(Target, 6, 100)
end


function proc(Caster, Target, ProcType)
    if ProcType == 6 then
        DamageSpawn(Caster, Target, 193, 5, 25, 35, "Catechize Arcana's Reprisal")
    end
end

function remove(Caster, Target)
    RemoveProc(Target)
end

