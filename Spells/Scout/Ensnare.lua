--[[
    Script Name    : Spells/Scout/Ensnare.lua
    Script Author  : LordPazuzu
    Script Date    : 3/17/2024
    Script Purpose : 
                   : 
--]]

function cast(Caster, Target, Snare)
    SetSpellSnareValue(Target, Snare) 
    AddControlEffect(Target, 11)
    AddProc(Target, 2, 5.0)
end

function proc(Caster, Target, Type)
    if Type == 2 then
        CancelSpell()
    end
end

function remove(Caster, Target)
    RemoveControlEffect(Target, 11)
end