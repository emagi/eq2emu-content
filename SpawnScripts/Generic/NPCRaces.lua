--[[
    Script Name    : SpawnScripts/Generic/NPCRaces.lua
    Script Author  : lordpazuzu
    Script Date    : 2025.07.31 03:07:08
    Script Purpose : 
                   : 
--]]

--Race functions for DoF compatibility.  These are called independently in the NPC's spawn function.
function dwarf(NPC, Spawn)
    --SpawnSet(NPC,"race_type",2)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",109)    
    else
    SpawnSet(NPC,"model_type",110)    
    end
    
    hair(NPC)
end

function froglok(NPC, Spawn)
    --SpawnSet(NPC,"race_type",4)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",76)    
    else
    SpawnSet(NPC,"model_type",77)    
    end
    
    hair(NPC)
end

function  halfling(NPC, Spawn)
    local hair = MakeRandomInt(1,2)
    --SpawnSet(NPC,"race_type",7)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",107)    
    else
    SpawnSet(NPC,"model_type",108)    
    end
    
    if hair == 1 then
        SpawnSet(NPC, "hair_type", MakeRandomInt(1125,1128))
    else
        SpawnSet(NPC, "hair_type", MakeRandomInt(1133,1139))
    end
    haircolor(NPC)

end

function  highelf(NPC, Spawn)
    --SpawnSet(NPC,"race_type",8)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",135)    
    else
    SpawnSet(NPC,"model_type",136)    
    end
    
    hair(NPC)
end

function woodelf(NPC, Spawn)
    --SpawnSet(NPC,"race_type",15)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",113)    
    else
    SpawnSet(NPC,"model_type",114)    
    end
    
    SpawnSet(NPC, "hair_type", MakeRandomInt(1133, 1139))
    haircolor(NPC)
end

function barbarian(NPC, Spawn)
    local hair = MakeRandomInt(1,2)
    --SpawnSet(NPC,"race_type",0)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",111)    
    else
    SpawnSet(NPC,"model_type",112)    
    end
    
    if hair == 1 then
        SpawnSet(NPC, "hair_type", MakeRandomInt(1125,1128))
    else
        SpawnSet(NPC, "hair_type", MakeRandomInt(1133,1139))
    end
    haircolor(NPC)
end

function erudite(NPC, Spawn)
    --SpawnSet(NPC,"race_type",3)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",120)    
    else
    SpawnSet(NPC,"model_type",119)    
    end
    
    hair(NPC)
end

function gnome(NPC, Spawn)
    --SpawnSet(NPC,"race_type",5)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",122)    
    else
    SpawnSet(NPC,"model_type",121)    
    end
    
    hair(NPC)
end

function halfelf(NPC, Spawn)
    --SpawnSet(NPC,"race_type",6)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",79)    
    else
    SpawnSet(NPC,"model_type",78)    
    end
    
    hair(NPC)
end

function human(NPC, Spawn)
    --SpawnSet(NPC,"race_type",9)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",132)    
    else
    SpawnSet(NPC,"model_type",134)    
    end
    
    hair(NPC)
end

function  kerra(NPC, Spawn)
    --SpawnSet(NPC,"race_type",11)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",81)    
    else
    SpawnSet(NPC,"model_type",82)    
    end
    
    hair(NPC)
end

function darkelf(NPC, Spawn)
    --SpawnSet(NPC,"race_type",1)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",116)    
    else
    SpawnSet(NPC,"model_type",115)    
    end
    
    hair(NPC)
    DarkElfHairColor(NPC, Spawn)
end

function iksar(NPC, Spawn)
    --SpawnSet(NPC,"race_type",10)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",104)    
    else
    SpawnSet(NPC,"model_type",103)    
    end
    
    hair(NPC)
end

function ogre(NPC, Spawn)
    --SpawnSet(NPC,"race_type",12)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",123)    
    else
    SpawnSet(NPC,"model_type",124)    
    end
    
    hair(NPC)
end

function ratonga(NPC, Spawn)
    --SpawnSet(NPC,"race_type",13)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",54)    
    else
    SpawnSet(NPC,"model_type",53)    
    end
    
    hair(NPC)
end

function  troll(NPC, Spawn)
    --SpawnSet(NPC,"race_type",14)
    
    if GetGender(NPC)==2 then
    SpawnSet(NPC,"model_type",105)    
    else
    SpawnSet(NPC,"model_type",106)    
    end
    
    hair(NPC)
    
end

-- Classic Orcs
function Deathfist(NPC, Spawn)
    SpawnSet(NPC,"model_type",137)
    SpawnSet(NPC, "skin_color", "50 60 50")
    SpawnSet(NPC, "eye_color", "98 63 28")
    --SpawnSet(NPC, "race_type", 20)
end

function Bloodskull(NPC, Spawn)
    SpawnSet(NPC,"model_type",137)
    --SpawnSet(NPC, "race_type", 20)
    SpawnSet(NPC, "skin_color", "50 60 50")
    SpawnSet(NPC, "eye_color", "98 63 28")
end

function Brokentusk(NPC, Spawn)
    SpawnSet(NPC,"model_type",137)
    --SpawnSet(NPC, "race_type", 20)
    SpawnSet(NPC, "skin_color", "110 75 75")
    SpawnSet(NPC, "eye_color", "98 63 28")
end

function Lonetusk(NPC, Spawn)
    SpawnSet(NPC,"model_type",137)
    --SpawnSet(NPC, "race_type", 20)
    SpawnSet(NPC, "skin_color", "92 52 52")
    SpawnSet(NPC, "eye_color", "98 63 28")
end

function Ree(NPC, Spawn)
    SpawnSet(NPC,"model_type",137)
    SpawnSet(NPC, "skin_color", "50 60 50")
    SpawnSet(NPC, "eye_color", "98 63 28")
end


--Giants

function HillGiantLesser(NPC, Spawn)
    RandomModel = MakeRandomInt(1,2)
    
    if RandomModel == 1 then
        SpawnSet(NPC,"model_type", 3805)
    elseif RandomModel == 2 then
        SpawnSet(NPC,"model_type", 3812)
    end
    
    local color = MakeRandomInt(1,4)
    if color == 1 then
        SpawnSet(NPC, "skin_color", "102 36 18")
    elseif color == 2 then
        SpawnSet(NPC, "skin_color", "218 187 120")
    elseif color == 3 then
        SpawnSet(NPC, "skin_color", "51 18 8")
    elseif color == 4 then
        SpawnSet(NPC, "skin_color", "5 5 10")
    end

end

--Gnolls

function BlackburrowGnoll(NPC, Spawn)
    GnollSkin = MakeRandomInt(1,2)
    
    if GnollSkin == 1 then
        SpawnSet(NPC,"model_type", 3816)
    elseif GnollSkin == 2 then
        SpawnSet(NPC,"model_type", 1384)
    end
end

-- DoF compatible hair functions
function hair(NPC, Spawn)
    SpawnSet(NPC, "hair_type", MakeRandomInt(1125, 1139))
    if GetRace(NPC)==1 then --Darkelf
        DarkElfHairColor(NPC, Spawn)
    else
        haircolor(NPC)
    end
end

function haircolor(NPC, Spawn)
    local color = MakeRandomInt(1,5)
    if color == 1 then
        SpawnSet(NPC, "hair_type_color", "102 36 18")
        SpawnSet(NPC, "hair_type_highlight_color", "138 129 121")
        SpawnSet(NPC, "hair_face_color", "102 36 18")
        SpawnSet(NPC, "hair_face_highlight_color", "138 129 121")
    elseif color == 2 then
        SpawnSet(NPC, "hair_type_color", "218 187 120")
        SpawnSet(NPC, "hair_type_highlight_color", "114 65 4")
        SpawnSet(NPC, "hair_face_color", "218 187 120")
        SpawnSet(NPC, "hair_face_highlight_color", "114 65 4")
    elseif color == 3 then
        SpawnSet(NPC, "hair_type_color", "51 18 8")
        SpawnSet(NPC, "hair_type_highlight_color", "60 59 55")
        SpawnSet(NPC, "hair_face_color", "51 18 8")
        SpawnSet(NPC, "hair_face_highlight_color", "60 59 55")
    elseif color == 4 then
        SpawnSet(NPC, "hair_type_color", "5 5 10")
        SpawnSet(NPC, "hair_type_highlight_color", "5 5 10")
        SpawnSet(NPC, "hair_face_color", "5 5 10")
        SpawnSet(NPC, "hair_face_highlight_color", "5 5 10")
    elseif color == 5 then    
        SpawnSet(NPC, "hair_type_color", "230 230 230")
        SpawnSet(NPC, "hair_type_highlight_color", "154 147 81")
        SpawnSet(NPC, "hair_face_color", "230 230 230")
        SpawnSet(NPC, "hair_face_highlight_color", "154 147 81")    
    end
end

function DarkElfHairColor(NPC, Spawn)
    local color = MakeRandomInt(1,5)
    if color == 1 then
        SpawnSet(NPC, "hair_type_color", "183 177 183")
        SpawnSet(NPC, "hair_type_highlight_color", "84 32 14")
        SpawnSet(NPC, "hair_face_color", "183 177 183")
        SpawnSet(NPC, "hair_face_highlight_color", "84 32 14")
    elseif color == 2 then
        SpawnSet(NPC, "hair_type_color", "170 191 191")
        SpawnSet(NPC, "hair_type_highlight_color", "84 32 4")
        SpawnSet(NPC, "hair_face_color", "170 191 191")
        SpawnSet(NPC, "hair_face_highlight_color", "84 32 4")
    elseif color == 3 then
        SpawnSet(NPC, "hair_type_color", "179 173 194")
        SpawnSet(NPC, "hair_type_highlight_color", "198 184 78")
        SpawnSet(NPC, "hair_face_color", "179 173 194")
        SpawnSet(NPC, "hair_face_highlight_color", "198 184 78")
    elseif color == 4 then
        SpawnSet(NPC, "hair_type_color", "219 244 244")
        SpawnSet(NPC, "hair_type_highlight_color", "105 103 97")
        SpawnSet(NPC, "hair_face_color", "219 244 244")
        SpawnSet(NPC, "hair_face_highlight_color", "105 103 97")
    elseif color == 5 then    
        SpawnSet(NPC, "hair_type_color", "139 122 138")
        SpawnSet(NPC, "hair_type_highlight_color", "105 103 97")
        SpawnSet(NPC, "hair_face_color", "139 122 138")
        SpawnSet(NPC, "hair_face_highlight_color", "105 103 97")    
    end
end

