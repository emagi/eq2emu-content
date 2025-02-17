--[[
    Script Name    : SpawnScripts/EastFreeport/Javvy.lua
    Script Author  : Dorbin
    Script Date    : 2023.10.11 05:10:56
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/DialogModule"

local TheMarinersRhyme = 5961

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
    if HasQuest(Spawn, TheMarinersRhyme, 1) then
        Dialog2(NPC, Spawn)
    else
        Dialog1(NPC, Spawn)
    end
end

function Dialog1(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Shove off! Not interested in company. Leave me to my grog. ")
	Dialog.AddVoiceover("voiceover/english/voice_emotes/greetings/greetings_1_1048.mp3", 0, 0)
	Dialog.AddOption("Whatever...")
	Dialog.Start()
end

function Dialog2(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("I thought I told you to get lost already! Why do you keep bothering me? What do you want?")
	Dialog.AddOption("I'm here on behalf of Augurer Valgus.", "Dialog3")
	Dialog.Start()
end

function Dialog3(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Oh great what does that old geezer want from me this time? I can never have a moments peace to just enjoy a couple pint's with the old sailing pals!")
	Dialog.AddOption("Valgus is asking about the Mariners Rhyme and it's whereabouts.", "Dialog4")
	Dialog.Start()
end

function Dialog4(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	Dialog.AddDialog("Serpents Fangs! I had bloody forgot about that after running into my old friend Fichman! We got a few pint's deep about times past. Would you help me out? I couldnt face Valgus right now even if I was sober!")
	Dialog.AddOption("Sure... I suppose I could help you out.", "Dialog5")
	Dialog.AddOption("No I have other things to attend to.", "No")
	Dialog.Start()
end

function Dialog5(NPC, Spawn)
    FaceTarget(NPC, Spawn)
	Dialog.New(NPC, Spawn)
	SetStepComplete(Spawn, TheMarinersRhyme, 1)
	Dialog.AddDialog("I cant thank you enough, here. This is what Valgus is asking about, it's some Mariner's Rhyme they've been searching for. Take it and bring it to him right away please! I will have to face him another day when I'm less...Under the weather so to say ha ha ha *hic*")
	Dialog.AddOption("Sure.. Dont mention it.")
	Dialog.Start()
end