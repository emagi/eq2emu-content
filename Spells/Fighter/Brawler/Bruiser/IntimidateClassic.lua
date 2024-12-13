--[[
    Script Name    : Spells/Fighter/Brawler/Bruiser/IntimidateClassic.lua
    Script Author  : LordPazuzu
    Script Date    : 2024.11.08 08:11:39
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target)
    AddControlEffect(Target, 1)
    AddProc(Target, 15, 100)
end

function proc(Caster, Target, Type)
    
    if Type == 15 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 1)
end