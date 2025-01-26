--[[
    Script Name    : Spells/Priest/Cleric/Inquisitor/Imprison.lua
    Script Author  : image
    Script Date    : 2025.01.26 03:01:25
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Roots target
	*If Target is not Epic

--]]

function cast(Caster, Target)
    if not IsEpic(Target) then
        AddControlEffect(Target, 5)
        AddProc(Target, 15, 20)
    end
end

function remove(Caster, Target)
    if not IsEpic(Target) then
        RemoveControlEffect(Target, 5)
        RemoveProc(Target)
    end
end

function proc(Caster, Target, ProcType)
    CancelSpell()
end
