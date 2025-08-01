--[[
    Script Name    : SpawnScripts/Generic/IdleAnimations.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.31 04:07:41
    Script Purpose : 
                   : 
--]]

--Idle Animation Packages:  Call the function in the main spawn function of the spawn script.

function IdleAggressive(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","scheme",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","brandish",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","swear",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","threaten",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleAggressive")
end

function IdleAlert(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","peer",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","listen",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","yawn",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","ponder",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleAlert")
end

function IdleMischief(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","moon",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","neener",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","giggle",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","dance",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","heartattack",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleMischief")
end

function IdleBored(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","sigh",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","stretch",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","yawn",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","stare",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleBored")
end

function IdlePlayful(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","dance",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","flirt",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","smile",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","thumbsup",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","yeah",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdlePlayful")
end

function IdleSad(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","sad",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","pout",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","sigh",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","sulk",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","cry",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleSad")
end

function IdleSneaky(NPC)
    if not IsInCombat(NPC) and GetRunbackDistance(NPC)<2 then
        local choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","scheme",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","smirk",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","whome",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","beckon",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","cutthroat",0,0)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdleSneaky")
end

function IdlePriest(NPC)
       if IsInCombat(NPC) == false then
        choice = MakeRandomInt(3,5)
        if choice == 1 then
            CastSpell(NPC, 110002, 5, NPC)
        elseif choice == 2 then
            CastSpell(NPC, 110003, 5, NPC)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","yawn",0,0)
--          PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
--          PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","sniff",0,0)
--          PlayAnimation(NPC, 553)
        end
end
    AddTimer(NPC,MakeRandomInt(6500,12000),"IdlePriest") 
    
end

function IdleAngry(NPC)
   if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","frustrated",0,0)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","curse",0,0)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","scold",0,0)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","shakefist",0,0)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","swear",0,0)
        end

end
    AddTimer(NPC,MakeRandomInt(7000,10000),"IdleAngry") 
end

function IdleBeggar(NPC)
    if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,5)
        if choice == 1 then
            PlayFlavor(NPC,"","","beg",0,0)
--            PlayAnimation(NPC, 310)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","peer",0,0)
--            PlayAnimation(NPC, 411)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","yawn",0,0)
--            PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","tapfoot",0,0)
--            PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","sniff",0,0)
--            PlayAnimation(NPC, 553)
        end
    end
    AddTimer(NPC,MakeRandomInt(10000,15000),"IdleBeggar") 
end

function IdleTinker(NPC)
    if IsInCombat(NPC) == false then
        choice = MakeRandomInt(1,7)
        if choice == 1 then
            PlayFlavor(NPC,"","","confused",0,0)
--            PlayAnimation(NPC, 310)
        elseif choice == 2 then
            PlayFlavor(NPC,"","","yes",0,0)
--            PlayAnimation(NPC, 411)
        elseif choice == 3 then
            PlayFlavor(NPC,"","","boggle",0,0)
--            PlayAnimation(NPC, 891)
        elseif choice == 4 then
            PlayFlavor(NPC,"","","ponder",0,0)
--            PlayAnimation(NPC, 713)
        elseif choice == 5 then
            PlayFlavor(NPC,"","","grumble",0,0)
--            PlayAnimation(NPC, 553)
        elseif choice == 6 then
            PlayFlavor(NPC,"","","doh",0,0)
--            PlayAnimation(NPC, 553)
        elseif choice == 7 then
            PlayFlavor(NPC,"","","crazy",0,0)
--            PlayAnimation(NPC, 553)
        end
    end
    AddTimer(NPC,MakeRandomInt(8000,13000),"IdleTinker") 
end

