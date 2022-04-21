local wait = task.wait -- latest anti vk technology by Bad#5193

repeat wait() until game and game.GameId
if (not game.GameId == 115797356) then return end

local currentinventory = {
    {"M4A4_Stock"},
    {"AUG_Stock"},
    {"AK47_Stock"},
    {"AWP_Stock"},
    {"Bizon_Stock"},
    {"CZ_Stock"},
    {"DesertEagle_Stock"},
    {"DualBerettas_Stock"},
    {"Famas_Stock"},
    {"FiveSeven_Stock"},
    {"G3SG1_Stock"},
    {"Galil_Stock"},
    {"Glock_Stock"},
    {"M249_Stock"},
    {"M4A1_Stock"},
    {"MAC10_Stock"},
    {"MAG7_Stock"},
    {"MP7_Stock"},
    {"MP7-SD_Stock"},
    {"MP9_Stock"},
    {"Negev_Stock"},
    {"Nova_Stock"},
    {"P2000_Stock"},
    {"P250_Stock"},
    {"P90_Stock"},
    {"R8_Stock"},
    {"SawedOff_Stock"},
    {"Scout_Stock"},
    {"Tec9_Stock"},
    {"UMP_Stock"},
    {"USP_Stock"},
    {"XM_Stock"},
    {"CTKnife_Stock"},
    {"TKnife_Stock"},
    {"CTGlove_Stock"},
    {"TGlove_Stock"},
}

local ctloadout = {
    R8Over = false,
    Scout = { "Scout_Stock" },
    M249 = { "M249_Stock" },
    CTKnife = { "CTKnife_Stock" },
    AWP = { "AWP_Stock" },
    R8 = { "R8_Stock" },
    DualBerettas = { "DualBerettas_Stock" },
    DesertEagle = { "DesertEagle_Stock" },
    CZ = { "CZ_Stock" },
    KnifeOver = false,
    FiveSeven = { "FiveSeven_Stock" },
    G3SG1 = { "G3SG1_Stock" },
    Bizon = { "Bizon_Stock" },
    Famas = { "Famas_Stock" },
    USP = { "USP_Stock" },
    P250 = { "P250_Stock" },
    CZOver = false,
    MP7 = { "MP7_Stock" },
    Negev = { "Negev_Stock" },
    ["MP7-SD"] = { "MP7-SD_Stock" },
    Nova = { "Nova_Stock" },
    Knife = "",
    XM = { "XM_Stock" },
    CTGlove = { "CTGlove_Stock" },
    M4A1 = { "M4A1_Stock" },
    M4A1Over = false,
    MP7SDOver = false,
    P2000 = { "P2000_Stock" },
    MP9 = { "MP9_Stock" },
    P90 = { "P90_Stock" },
    M4A4 = { "M4A4_Stock" },
    Glove = "",
    GloveOver = false,
    UMP = { "UMP_Stock" },
    AUG = { "AUG_Stock" },
    MAG7 = { "MAG7_Stock" },
    USPOver = true
}

local tloadout = {
    R8Over = false,
    Scout = { "Scout_Stock" },
    M249 = { "M249_Stock" },
    AWP = { "AWP_Stock" },
    CZ = { "CZ_Stock" },
    KnifeOver = false,
    SawedOff = { "SawedOff_Stock" },
    TKnife = { "TKnife_Stock" },
    Tec9 = { "Tec9_Stock" },
    Negev = { "Negev_Stock" },
    Nova = { "Nova_Stock" },
    SG = { "SG_Stock" },
    DesertEagle = { "DesertEagle_Stock" },
    G3SG1 = { "G3SG1_Stock" },
    Bizon = { "Bizon_Stock" },
    Glock = { "Glock_Stock" },
    MAC10 = { "MAC10_Stock" },
    P250 = { "P250_Stock" },
    CZOver = false,
    MP7 = { "MP7_Stock" },
    TGlove = { "TGlove_Stock" },
    AK47 = { "AK47_Stock" },
    XM = { "XM_Stock" },
    Galil = { "Galil_Stock" },
    Knife = "",
    MP7SDOver = false,
    P90 = { "P90_Stock" },
    Glove = "",
    R8 = { "R8_Stock" },
    ["MP7-SD"] = { "MP7-SD_Stock" },
    GloveOver = false,
    UMP = { "UMP_Stock" },
    DualBerettas = { "DualBerettas_Stock" }
}

local oNamecall
oNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if (not checkcaller()) then
        if (method == "InvokeServer") then
            if (typeof(args[1]) == "table" and args[1][1] == "GetInventory&Loadout") then
                return currentinventory, ctloadout, tloadout
            --elseif (typeof(args[1]) == "table" and args[1][1] == "GetCrosshair") then
                --return {}    
            elseif (self.Name == "Hugh") then
                return
            end
        end
    end
    
    return oNamecall(self, unpack(args))
end)

repeat wait() until game.GetService and game:GetService("Players") and game:GetService("Players").LocalPlayer

local client = getsenv(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Client"))

client.CTLoadout = ctloadout
client.TLoadout = tloadout
client.CurrentInventory = currentinventory

print("blur fixed, wait 8 seconds before you run any script")

wait(8)
hookmetamethod(game, "__namecall", oNamecall)

print("you can run your scripts now")