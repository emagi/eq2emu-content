--[[
    Script Name    : Spells/Commoner/BattleReprieveRecovery.lua
    Script Author  : image
    Script Date    : 2025.08.06 02:08:24
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 25.0% of max health
*Increases Mitigation of target vs physical damage by 220

--]]

function cast(Caster, Target, MitigationAmt)
    -- upon termination adds up to 25% max health
    AddSpellBonus(Target, 200, MitigationAmt)
    local reviveSicknessSpell = GetSpell(5162, 1)
    if reviveSicknessSpell ~= nil then
        CastCustomSpell(reviveSicknessSpell, Target, Target)
    end
end

function remove(Caster, Target, Reason, MitigationAmt)
    RemoveSpellBonus(Target)
    if IsAlive(Target) then
        local maxHeal = GetMaxHP(Target) / 4
        SpellHeal("heal", maxHeal, maxHeal, Target) -- / 4 for 25% max increase
    end
end