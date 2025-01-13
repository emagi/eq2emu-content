--[[
    Script Name    : Spells/Commoner/ReformingSoul.lua
    Script Author  : image
    Script Date    : 2025.01.11 01:01:17
    Script Purpose : 
                   : 
--]]

--[[ Info from spell_display_effects (remove from script when done)

*Heals target for 25.0% of max health
*Provides damage shield up to 12.5% of max health (No info on exact amount)
--]]


function cast(Caster, Target)
    -- upon termination adds up to 25% max health
    -- provides a damage shield of 12.5% of max health
    local maxShieldDmg = GetMaxHP(Target) / 8
    AddWard(maxShieldDmg, 1)
    local reviveSicknessSpell = GetSpell(5162, 1)
    if reviveSicknessSpell ~= nil then
        CastCustomSpell(reviveSicknessSpell, Target, Target)
    end
end

function remove(Caster, Target)
    if IsAlive(Target) then
        local maxHeal = GetMaxHP(Target) / 4
        SpellHeal("heal", maxHeal, maxHeal, Target) -- / 4 for 25% max increase
    end
end