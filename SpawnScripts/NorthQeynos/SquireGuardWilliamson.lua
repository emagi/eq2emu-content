--[[
	Script Name		: SpawnScripts/NorthQeynos/Squire-GuardWilliamson.lua
	Script Purpose	: Squire-Guard Williamson
	Script Author	: Dorbin
	Script Date		: 2022.04.23
	Script Notes	: Modified to offer quests based on player level ranges (10-14, 15-19)
--]]

require "SpawnScripts/Generic/DialogModule"

local questsByLevel = {
    ["10-14"] = {6020, 6021},  -- Quests for levels 10-14
    ["15-19"] = {6022, 6023, 6024}  -- Quests for levels 15-19
}

function spawn(NPC)
end

function respawn(NPC)
    spawn(NPC)
end

function hailed(NPC, Spawn)
    local playerLevel = GetLevel(Spawn)
    local quests = nil

    -- Determine the quests based on the player's level
    if playerLevel >= 10 and playerLevel <= 14 then
        quests = questsByLevel["10-14"]
    elseif playerLevel >= 15 and playerLevel <= 19 then
        quests = questsByLevel["15-19"]
    end

    if quests then
        -- Check if the player already has any quest from the list (both level ranges)
        for levelRange, questList in pairs(questsByLevel) do
            for _, questID in ipairs(questList) do
                if HasQuest(Spawn, questID) then
                    -- If the player has any quest from the list, exit early
                    Say(NPC, "You're already on a task. Finish it first before taking another.")
                    return
                end
            end
        end

        -- If no quest was found, offer a new one
        local newQuestID = quests[math.random(#quests)]
        OfferQuest(NPC, Spawn, newQuestID)
        Say(NPC, "I have a task for someone of your experience. Will you take it?")
    else
        Say(NPC, "I have no tasks suitable for your level. You may need to seek another challenge.")
    end
end

function RandomGreeting(NPC, Spawn)
    local choice = MakeRandomInt(1,3)

    if choice == 1 then
        PlayFlavor(NPC, "voiceover/english/guard_williamson/qey_north/100_soc_human_guard_williamson_tasked_28d1905b.mp3", "Please return to me when you have completed your current task.", "", 2875243139, 3591083733, Spawn, 0)
    elseif choice == 2 then
        PlayFlavor(NPC, "voiceover/english/guard_williamson/qey_north/100_soc_human_guard_williamson_goodbye_43af86c3.mp3", "You've done an excellent job defending the city. We owe you a debt of thanks. We still have a lot of work to do. Go see Knight-Guard Rellin'thir, and he'll fill you in on the latest reports. Well done, citizen!", "salute", 127955092, 483846497, Spawn, 0)
    elseif choice == 3 then
        PlayFlavor(NPC, "voiceover/english/guard_williamson/qey_north/100_soc_human_guard_williamson_goodbye_43af86c3.mp3", "You've done an excellent job defending the city. We owe you a debt of thanks. We still have a lot of work to do. Go see Knight-Guard Rellin'thir, and he'll fill you in on the latest reports. Well done, citizen!", "salute", 127955092, 483846497, Spawn, 0)
    end
end

function Dialog1(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("...")
    Dialog.AddOption("I would like the writ: Ripe for the Picking", "Dialog2")
    Dialog.AddOption("I would like the writ: The Supply Lines")
    Dialog.AddOption("I will be going.")
    Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    Dialog.AddDialog("Welcome to the castle, citizen. If you wish to serve the city's defenses, you've come to the right place. Here's a writ from the sergeant about some disturbances we've encountered. Please see to them, and return to me once you complete this task. All hail Queen Antonia!")
    Dialog.AddVoiceover("voiceover/english/guard_williamson/qey_north/100_soc_human_guard_williamson_greeting_5e9d7426.mp3", 552561121, 2568802587)
    Dialog.AddOption("Okay.")
    Dialog.Start()
end