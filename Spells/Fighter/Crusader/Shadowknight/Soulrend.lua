    --[[
        Script Name    : Spells/Fighter/Crusader/Shadowknight/Soulrend.lua
        Script Author  : Jabantiz
        Script Date    : 2014.01.08 03:01:53
        Script Purpose : 
                       : 
    --]]

    function cast(Caster, Target, DmgType, MinVal, MaxVal)

    	local damageInflicted = false;
        -- Inflicts 12 - 20 piercing damage on target
        if MaxVal ~= nil and MinVal < MaxVal then
            damageInflicted = SpellDamage(Target, DmgType, math.random(MinVal, MaxVal))
        else
            damageInflicted = SpellDamage(Target, DmgType, MinVal)
        end

        -- Applies Knockdown on termination.  Lasts for 1.5 seconds.
        --     Throws target back
        --     Stuns target
        --     Blurs vision of target
        --     Does not affect Epic targets
        if damageInflicted and not IsEpic(Target) then
            AddControlEffect(Target, 4)
            BlurVision(Target, 1.0)
            AddSpellTimer(1500, "RemoveStunBlur")
        end
    end

    function RemoveStunBlur(Caster, Target)
        RemoveControlEffect(Target, 4)
        BlurVision(Target, 0)
    end