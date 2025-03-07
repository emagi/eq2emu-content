--[[
    Script Name    : SpawnScripts/WestFreeport/AverusJustarius.lua
    Script Author  : Xiki
    Script Date    : 2025.03.05 11:03:13
    Script Purpose : 
                   : 
--]]
require "SpawnScripts/Generic/DialogModule"
require "SpawnScripts/Generic/NPCModule"

function spawn(NPC, Spawn)
    NPCModule(NPC, Spawn)
end

local Quest1 = 6005
local Quest2 = 6006
local Quest3 = 6007
local Quest4 = 6008

function spawn(NPC)
    SetPlayerProximityFunction(NPC, 10, "InRange", "LeaveRange")
    ProvidesQuest(NPC, Spawn, Quest1)
    ProvidesQuest(NPC, Spawn, Quest2)
    ProvidesQuest(NPC, Spawn, Quest3)
    ProvidesQuest(NPC, Spawn, Quest4)
end

function InRange(NPC,Spawn)
    NeverTakenGreeting(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	if not HasQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) then
	    Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius001.mp3", "", "nod", 3214528401, 2444781166, Spawn, 0)
        Dialog.AddDialog("You got a hearing problem? If you want a good shot of the next execution, then pick a seat like the rest of the losers do, but this spot is mine. Now shove off, filth licker!")
        Dialog.AddOption("Keep wagging your tongue like that, dog, and someone's likely to take it from you... ", "Dialog1")
        Dialog.AddOption("I don't have time to waste on someone like you.  Goodbye.", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest1)==3 then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius014.mp3", "", "nod", 2433764898, 4240417940, Spawn, 0)
        Dialog.AddDialog("Was it as bad as the stories claim?")
        Dialog.AddOption("Yeah... there were undead everywhere. I think I saw some living orcs, too.", "Dialog11")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, Quest1) and not HasQuest(Spawn, Quest2) and not HasCompletedQuest(Spawn, Quest2) then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius029.mp3", "", "nod", 1668849620, 2703454694, Spawn, 0)
        Dialog.AddDialog("Are we going to work together or not?  It's not like I have anything better to do - other than save my DAD'S LIFE!")
        Dialog.AddOption("Quit your whining. I'll help you. What were you saying about these orcs?", "Dialog13")
        Dialog.AddOption("When I'm not so busy, I might help you. Bye!", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest2)==2 then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius019.mp3", "", "nod", 1920626407, 3956266119, Spawn, 0)
        Dialog.AddDialog("Well I'll be a troll's uncle ... this is better than I expected! Yes, friend, you found some proof. My friend in the Dismal Rage is going to go gaga when she sees this. Well, once she pays up, that is. You have no idea what you stumbled into...")
        Dialog.AddOption("How about you tell me then?", "Dialog15")
        SetStepComplete(Spawn, Quest2, 2)
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest3)==2 then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius022.mp3", "", "nod", 3410678397, 4191972306, Spawn, 0)
        Dialog.AddDialog("Oh boy! Oh boy! Oh boy! This ugly mug fits the description perfectly. Woohooo! We're going to be so rich! Now listen... I've one more plan. This one's for the Academy. If we pull this off, we won't work another day in our lives!")
        Dialog.AddOption("WHOA! Wait a minute! How much did you get for that badge?", "Dialog17")
        Dialog.Start()
        SetStepComplete(Spawn, Quest3, 2)
    elseif HasCompletedQuest(Spawn, Quest1) and HasCompletedQuest(Spawn, Quest2) and not HasCompletedQuest(Spawn, Quest3) and not HasQuest(Spawn, Quest3) then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius029.mp3", "", "nod", 1668849620, 2703454694, Spawn, 0)
        Dialog.AddDialog("Are we going to work together or not?  It's not like I have anything better to do - other than save my DAD'S LIFE!")
        Dialog.AddOption("Quit your whining. I'll help you. What were you saying about these orcs?", "OfferQuest3")
        Dialog.AddOption("When I'm not so busy, I might help you. Bye!", "No")
        Dialog.Start()
    elseif HasCompletedQuest(Spawn, Quest1) and HasCompletedQuest(Spawn, Quest2) and HasCompletedQuest(Spawn, Quest3) and not HasQuest(Spawn, Quest4) and not HasCompletedQuest(Spawn, Quest4) then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius029.mp3", "", "nod", 1668849620, 2703454694, Spawn, 0)
        Dialog.AddDialog("Are we going to work together or not?  It's not like I have anything better to do - other than save my DAD'S LIFE!")
        Dialog.AddOption("Quit your whining. I'll help you. What were you saying about these orcs?", "OfferQuest4")
        Dialog.AddOption("When I'm not so busy, I might help you. Bye!", "No")
        Dialog.Start()
    elseif GetQuestStep(Spawn, Quest4)==2 then
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius025.mp3", "", "nod", 3487980821, 567938504, Spawn, 0)
        Dialog.AddDialog("YES! YES! YES! YES!!!! Just like that ratonga said! These things prove that those skeletons in those caves were raised recently! Those orcs are pulling some kind of weird stunt in that cave!!! If the Foci pays as much money for these things as that rat said, I'll spend it all on--")
        Dialog.AddOption("HOLD ON! What about your blasted DAD?! Remember? The guy about to be executed?", "Dialog19")
        Dialog.Start()
    elseif HasQuest(Spawn, Quest1) or HasQuest(Spawn, Quest2) or HasQuest(Spawn, Quest3) or HasQuest(Spawn, Quest4) then --onquestdone VO
        PlayFlavor(NPC, "voiceover/english/optional1/averus_justarius/fprt_west/015_qst_averus_justarius_hailonquest_d529c4f9.mp3", "", "nod", 439097567, 2431053698, Spawn, 0)
        Say(NPC, "We'll never get rich with you goofing off!")
	elseif HasCompletedQuest(Spawn, Quest1) and HasCompletedQuest(Spawn, Quest2) and HasCompletedQuest(Spawn, Quest3) and HasCompletedQuest(Spawn, Quest4) then
	    PlayFlavor(NPC, "voiceover/english/optional1/averus_justarius/fprt_west/015_qst_averus_justarius_haildone_becd4a54.mp3", "", "nod", 2253794664, 3141321421, Spawn, 0)
	    Say(NPC, "Listen, snotmunch, I paid you! Quit bothering me!  Get out of my way ... I'm busy looking at you poor people...")
	end
end

function respawn(NPC)
	spawn(NPC)
end

function NeverTakenGreeting(NPC, Spawn)
    if not HasQuest(Spawn, Quest1) and not HasCompletedQuest(Spawn, Quest1) then
        PlayFlavor(NPC, "voiceover/english/optional1/averus_justarius/fprt_west/015_qst_averus_justarius_calloutnevertakenquest_78e8d752.mp3", "", "nod", 851618842, 2421457843, Spawn, 0)
    elseif HasQuest(Spawn, Quest2) and not HasCompletedQuest(Spawn, 2) then
        PlayFlavor(NPC, "voiceover/english/optional1/averus_justarius/fprt_west/015_qst_averus_justarius_calloutrefusedquest_e9005368.mp3", "", "nod", 2674887132, 2050049933, Spawn, 0)
    end
end

function Dialog1(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius002.mp3", "", "nod", 96044037, 1114834891, Spawn, 0)
        Dialog.AddDialog("Oh yeah? Who? You? Sure, buddy... oooh ... look at me ... I'm gonna talk tough ... I'm so scary ... ooooh!  Yeah ... just like everyone else here. The minute you lay one finger on me, those guards are gonna give you a little invitation to the Militia Holding Cells. Know what happens then, snot munch?")
        Dialog.AddOption("Why don't you tell me? Then I can decide if it's worth it or not. ", "Dialog2")
        Dialog.AddOption("Yeah... I quit listening to you. Bye.", "No")
        Dialog.Start()
end

function Dialog2(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius003.mp3", "", "nod", 2785792380, 3239257058, Spawn, 0)
        Dialog.AddDialog("That's when you get to have 'Happy Time' with the Militia. You get to play fun games like 'Accidentally Falling Down the Stairs' or 'Who Put That Door There?' My Dad's favorite was always, 'Look At Me When I'm Hitting You!' The lucky ones wind up losing some teeth and maybe an eyeball or two. The others, like my pops, get to provide the daily entertainment.")
        Dialog.AddOption("You're standing here so you can see your Dad get executed?", "Dialog3")
        Dialog.AddOption("You're boring me. Bye", "No")
        Dialog.Start()
end

function Dialog3(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius004.mp3", "", "nod", 2754615172, 3827568036, Spawn, 0)
        Dialog.AddDialog("No, you stupid orc kisser! I'm trying to delay it! He may have been a cruddy dad, but he's all I've got. They arrested him on trumped up charges of treason. Pfht--more like he mouthed off to a guard. I've bribed one of the guards to pick another guy each day ... HEY! Wanna make some money and maybe even a friend? I know a lot of people in Freeport ... I could introduce you to them...")
        Dialog.AddOption("What do you want me to do? Tell me first then I'll decide.", "Dialog4")
        Dialog.AddOption("I don't want you as a friend, fool. Bye.", "No")
        Dialog.Start()
end

function Dialog4(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius005.mp3", "", "nod", 3089030910, 1993494818, Spawn, 0)
        Dialog.AddDialog("I know some important people who work for the Coalition of Tradesfolke; they're the big money here in Freeport. One of their guys said they're sending people into the Wailing Caves to salvage armor from those dead orcs.")
        Dialog.AddOption("What's all this about the Wailing Caves?", "Dialog5")
        Dialog.AddOption("Never mind. I don't care anymore.", "No")
        Dialog.Start()
end

function Dialog5(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius006.mp3", "", "nod", 3644935034, 1130007530, Spawn, 0)
        Dialog.AddDialog("Get off it, already! Everyone's heard about the Wailing Caves. It's a story you tell to kids to get them to shut up. It's true, but it's still fun to watch the little kids wet themselves when they hear it. Any ways ... if you and me work together, we can beat everyone else to all that coin. I'll make enough coin to save my dad from the Pit, and you can do whatever with yours. Sound good?")
        Dialog.AddOption("Why not? I've got nothing better to do. So what do I have to do?", "OfferQuest1")
        Dialog.AddOption("Tell me the story about the Caves, first. I promise not to wet myself.", "Dialog6")
        Dialog.Start()
end

function OfferQuest1(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest1)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius007.mp3", "", "nod", 2213806006, 568771432, Spawn, 0)
    Dialog.AddDialog("I've never actually been to the Caves, but if the stories are true, that place is littered with undead. Not scared of bones, are you? Good. Either way, I don't want you getting killed. Call me what you will, but I'm not a murderer. Make sure you can handle the undead inside the caves before you go deeper inside. And don't go off and get killed--that won't help anyone.")
    Dialog.AddOption("I'll let you know how dangerous the place is when I get back.")
    Dialog.Start()
end

function Dialog6(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius008.mp3", "", "nod", 2128629817, 2703428377, Spawn, 0)
        Dialog.AddDialog("Are you a stupid refugee or something? Fine, here's how I heard the story. So the orcs, right? Well, they had this fort northwest of Freeport near some caves. And this was a long time back, too, okay? So, the Overlord, he gets tired of the orcs being close to the city and has the Militia go after them.")
        Dialog.AddOption("Yeah, that happens all the time. So what?", "Dialog7")
        Dialog.Start()
end

function Dialog7(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius009.mp3", "", "nod", 3326666281, 2106626320, Spawn, 0)
        Dialog.AddDialog("You wanna hear the story or not? So, Lucan sends some of the Militia into the caves to make some noise. Well, the orcs start sending their troops to take care of the Militia, right? When the orcs don't come back, they start sending in more and more troops. In the end, the orcs sent their entire army into the cave.")
        Dialog.AddOption("What does that have to do with anything?", "Dialog8")
        Dialog.Start()
end

function Dialog8(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius010.mp3", "", "nod", 1327939416, 2895189461, Spawn, 0)
        Dialog.AddDialog("So, when all them orcs are in there, right, the real Militia comes from behind and pushes the orc army deeper into the cave ... straight for a huge pit. When it was all done, the Militia killed hundreds and hundreds of orcs by making them fall to their deaths. Better yet, the first Militia group was never told what was going to happen. They were the first to get shoved into the pit.")
        Dialog.AddOption("Yeah... that sounds just like the Militia.", "Dialog9")
        Dialog.Start()
end

function Dialog9(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius011.mp3", "", "nod", 2658975068, 1739573613, Spawn, 0)
        Dialog.AddDialog("A few years later, the Militia decides to use the old orc fort as an outpost, right? 'Cept it's gone. It was destroyed by all of these undead orcs coming out of those caves. The Overlord sends both the Militia and Dismal Rage back into the caves to take care of those walking skeletons. The army that went into the caves was never heard from again...")
        Dialog.AddOption("You're saying they disappeared? An entire army vanishes into thin air?", "Dialog10")
        Dialog.Start()
end

function Dialog10(NPC, Spawn)
    	Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius012.mp3", "", "nod", 1885693650, 3939794484, Spawn, 0)
        Dialog.AddDialog("No, I said they were never 'heard' from again. When the sun came up the next morning, all along the road leading to the caves were wooden posts driven into the ground. Hanging from hundreds of those posts were the hands, feet, and head of each and every one of those soldiers and priests who went into the cave the day before. And every last one of them had a look of ghastly terror on their dead faces.")
        Dialog.AddOption("Oh. Is there... is there an outhouse around here some... er... I mean... uh... Yeah, so?", "OfferQuest1")
        Dialog.Start()
end

function Dialog11(NPC, Spawn)
    FaceTarget(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius015.mp3", "", "nod", 1270885625, 1907805671, Spawn, 0)
    Dialog.AddDialog("Living orcs?  That's not possible.  Everyone knows that the Bloodskull orcs won't set foot inside those caves.  Then again, I don't see why you'd lie about something like that.  Hmmmmm ... that gives me an idea ... Yeah ... you know something?  I think we found a way to make even more money, friend.")
    Dialog.AddOption("Speaking of money, when do I start seeing this money you're talking about?", "Dialog12")
    Dialog.Start()
end

function Dialog12(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius016.mp3", "", "nod", 661596952, 946576011, Spawn, 0)
    Dialog.AddDialog("Didn't I tell you that all I have in this world are my Dad and a few contacts that work for the Quintet? You need me for my contacts, and I need you to help save my Dad, remember? If we work together, then we'll make money. But if you get all whiney about it, then take this for now. So ... are we going to keep working together or not?")
    Dialog.AddOption("Yeah I guess we can. Now what were you saying about these orcs?")
    Dialog.AddOption("I'll think about it. Good luck with your Dad, friend.")
    Dialog.Start()
    SetStepComplete(Spawn, Quest1, 3)
end

function Dialog13(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius017.mp3", "", "nod", 3112576234, 3467860225, Spawn, 0)
    Dialog.AddDialog("So I was thinking ... if these Bloodskull orcs are sending scouts into the Wailing Caves, they might be trying to get all that armor, too. However ... if I talk with my contacts in the Dismal Rage and give them proof the orcs are returning, I think they'll pay good money for information like that. So I say we deal with the orcs and then we get the armor.")
    Dialog.AddOption("If more money can be made this way, then I'm all for it.", "OfferQuest2")
    Dialog.AddOption("Never mind. I'm not interested after all.", "No")
    Dialog.Start()
end

function OfferQuest2(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest2)
    Dialog14(NPC, Spawn)
end

function Dialog14(NPC, Spawn)
    Dialog.New(NPC, Spawn)
    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius018.mp3", "", "nod", 1210919544, 2525837235, Spawn, 0)
    Dialog.AddDialog("This is what we need to do. I'll try to get in touch with my friend in the Dismal Rage and see if they'll buy this information. You need to go back to the Caves and get proof that an orc scouting party is in there. Let's do this fast, okay?")
    Dialog.AddOption("I'll do what I can. And you better ask for a good price on that information.")
    Dialog.Start()
end

function Dialog15(NPC, Spawn)
        Dialog.New(NPC, Spawn)
	    PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius020.mp3", "", "nod", 1834297457, 2439183700, Spawn, 0)
        Dialog.AddDialog("My friend told me one of their Defilers claims to have spoken with a spirit that died in some nearby caves. The spirit possessed the priest and they had to kill him but before they did, the Defiler babbled the word 'Shin'Ree' over and over. This badge is worth a lot to the Dismal Rage ... but I have an even better idea. Wanna help me make even MORE money?")
        Dialog.AddOption("More money sounds good, how about you tell me the plan.", "Dialog16")
        Dialog.AddOption("When I'm not so busy, I might help you. Bye!", "No")
        Dialog.Start()
end

function OfferQuest3(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest3)
    Dialog16(NPC, Spawn)
end

function Dialog16(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius021.mp3", "", "nod", 3294687103, 4247775597, Spawn, 0)
    Dialog.AddDialog("Okay, after I finished talking with the Dismal Rage, I spoke with another friend who works for the Seafuries. They have a bounty for an orc who raided some of their cargo. The last report claims he ran off in the direction of the Wailing Caves. They think the undead got him. I think otherwise. Go get that orc's head, friend, and we'll be rolling in the silver! And I can save my Dad.")
    Dialog.AddOption("I like the sound of this. I'll be back when I have his head.")
    Dialog.Start()
end

function Dialog17(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius023.mp3", "", "nod", 2424359105, 631811024, Spawn, 0)
    Dialog.AddDialog("Look, I'm about to make us richer than we've ever been in our entire lives and you're talking about pocket change. Listen ... I contacted this ratonga, right? Well, he knows this guy, who knows this lady, who knows the head honcho of that Academy--the Foci! She wants something from the bottom of the pit where those orcs died all those years ago. You up for this? Huh? Huh?")
    Dialog.AddOption("Yeah, but this will be it then I want my money. And you better save your Dad, too.", "OfferQuest4")
    Dialog.AddOption("I'm not going down in that pit!! Do it yourself.", "No")
    Dialog.Start()
end

function OfferQuest4(NPC, Spawn)
    OfferQuest(NPC, Spawn, Quest4)
    Dialog18(NPC, Spawn)
end

function Dialog18(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius024.mp3", "", "nod", 1453906879, 78391398, Spawn, 0)
    Dialog.AddDialog("Focus, buddy! We're about to rake in crazy amounts of cash, and you're talking about my Dad! That loser can wait! Now listen ... go back to the caves ... go down to the bottom of the pit. Gather the insides of those weird ghostly things. Bring those back and we'll be rich! RICH!!!")
    Dialog.AddOption("Ghostly insides...got it.")
    Dialog.Start()
end

function Dialog19(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius026.mp3", "", "nod", 3311719314, 1876047103, Spawn, 0)
    Dialog.AddDialog("My Dad? That worthless nobody never did anything for me! Remember how I told you all I had were a few friends and my Dad? Well, now I have a few friends and lots of cold, hard cash!! I don't need that fool anymore! He can get thrown in the pit for all I care. I'M RICH, you see?")
    Dialog.AddOption("Whatever. Now... where's my cash?", "Dialog20")
    Dialog.Start()
end

function Dialog20(NPC, Spawn)
    Dialog.New(NPC, Spawn)
	PlayFlavor(NPC, "voiceover/english/averus_justarius/fprt_west/qst_averus_justarius027.mp3", "", "nod", 3078760362, 1294555810, Spawn, 0)
    Dialog.AddDialog("Yeah, your payment ... I really hate giving up this money. But a deal's a deal... take this silver. Now, since I did most of the work--you know, talking with people, walking around the city, that kinda thing ... well, I'm get the bigger share. For instance, I've been offered ten gold for each of these core thingies. Well, we're done working together. See you later!")
    Dialog.AddOption("Why you little... I'm gonna rip your arms off...", "Dialog20")
    Dialog.Start()
    SetStepComplete(Spawn, Quest4, 2)
end
