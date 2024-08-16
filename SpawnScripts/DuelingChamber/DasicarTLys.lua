--[[
    Script Name    : SpawnScripts/DuelingChamber/DasicarTLys.lua
    Script Author  : dorbin
    Script Date    : 2024.08.12 12:08:50
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"

function spawn(NPC)
    SetTempVariable(NPC,"StartCheck", false)
    NPCModule(NPC, Spawn)
end

function hailed(NPC, Player)
        if GetTempVariable(NPC,"StartCheck") ~= true then
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("I don't know who permitted you inside, but it's considered rude for a whelp to interfere with the studies of a Paragon such as me.  Please remove yourself from my sight!")
		Dialog.AddVoiceover("voiceover/english/paragon_jalex/fprt_north/100_soc_darkelf_academy_officer_jalex_no_8f262f9f.mp3",3952822001, 2401896728)
        PlayFlavor(NPC,"","","smirk",0,0,Player)
        if GetClass(Player)== 21 then
		Dialog.AddOption("So you're the one I'm suppose to dule. My magic will destroy you!","Start1")
		end
		Dialog.AddOption("I... was just leaving.")
		Dialog.Start()
		end
end

function Start1(NPC, Player)
        SetTempVariable(NPC,"StartCheck", true)
		FaceTarget(NPC, Player)
		Dialog.New(NPC, Player)
		Dialog.AddDialog("Your pathetic parlor tricks won't save you now, magician!")
		Dialog.AddVoiceover("voiceover/english/darkelf_base_1/ft/darkelf/darkelf_base_1_1_maomage_gm_7c1c0586.mp3",2940784449, 2243650132)
        PlayFlavor(NPC,"","","shakefist",0,0,Player)
		Dialog.AddOption("We shall see.")
		Dialog.Start()
		AddTimer(NPC,500,"Cast",1,Player)
		AddTimer(NPC,6000,"Attack1",1,Player)
		AddTimer(NPC,10000,"Attack2",1,Player)
end

function Cast(NPC,Player)
    CastSpell(NPC, 210021)
end

function Attack1(NPC,Player)
    CloseConversation(NPC,Player)
    SpawnSet(NPC,"faction",1)
    SpawnSet(NPC,"show_name",1)
    SpawnSet(NPC,"show_level",1)
    SpawnSet(NPC,"attackable",1)
    SpawnSet(NPC,"targetable",1)
    SpawnSet(NPC,"show_command_icon",1)    
end

function Attack2(NPC,Player)
    Attack(NPC,Player)  
end

function aggro(NPC,Player)
        PlayFlavor(NPC,"","To my side! Now! Earn your keep with this welp!","",0,0,Player)
end

function death(NPC,Player)
    PlayFlavor(NPC,"","Curse you! Our paths will cross again!","",0,0)
    local zone = GetZone(NPC)
    local Dasicar = GetSpawnByLocationID(zone, 133793704)
    local assassin1 = GetSpawnByLocationID(zone, 133793751)
    local assassin2 = GetSpawnByLocationID(zone, 133793752)
    if IsAlive(Dasicar) == false and IsAlive(assassin1) == false and IsAlive(assassin2) == false then
    if HasQuest(Spawn,5905) then
    SetStepComplete(Spawn,5905,1)
    end
    end
end


    
function respawn(NPC)
	spawn(NPC)
end