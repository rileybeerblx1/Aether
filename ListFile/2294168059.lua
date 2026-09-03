local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Stats = game:GetService("Stats")
local StarterGui = game:GetService("StarterGui")

local Vector3New = Vector3.new
local CFrameNew = CFrame.new
local Color3FromRGB = Color3.fromRGB

local VEC3 = Vector3New(3, 3, 3)
local VEC2 = Vector3New(2, 2, 2)
local VEC252 = Vector3New(2, 5, 2)
local VEC10 = Vector3New(10, 10, 10)
local CFR9E9 = CFrameNew(0, 9e9, 0)

local RED = Color3FromRGB(255, 0, 0)
local BLUE = Color3FromRGB(0, 0, 255)
local GREEN = Color3FromRGB(0, 255, 0)
local YELLOW = Color3FromRGB(255, 255, 0)
local WHITE = Color3FromRGB(255, 255, 255)
local PURPLE = Color3FromRGB(77, 23, 129)

local DIM0010 = UDim2.new(0, 0, 1, 0)
local EMPTY_OBJECT = {Parent = nil, SeatPart = nil}
local PERSISTENT = Enum.ModelStreamingMode.Persistent

local PlaceId = game.PlaceId

local Config = {}
Config.Client = Config.Client or {}
Config.Client.Client = Config.Client.Client or {}
Config.Yen = Config.Yen or {}
Config.B1C4 = Config.B1C4 or {}
Config.B1C4.Map4 = Config.B1C4.Map4 or {}
Config.B2C1 = Config.B2C1 or {}
Config.B2C1.City = Config.B2C1.City or {}
Config.B2C1.City.ESP = Config.B2C1.City.ESP or {}
Config.B2C1.Rat = Config.B2C1.Rat or {}
Config.B2C1.Rat.ESP = Config.B2C1.Rat.ESP or {}
Config.B2C1.Village = Config.B2C1.Village or {}
Config.B2C1.Village.ESP = Config.B2C1.Village.ESP or {}
Config.B2C1.Ship = Config.B2C1.Ship or {}
Config.B2C1.Ship.ESP = Config.B2C1.Ship.ESP or {}
Config.B2C2 = Config.B2C2 or {}
Config.B2C2.Meat = Config.B2C2.Meat or {}
Config.B2C2.Meat.ESP = Config.B2C2.Meat.ESP or {}
Config.B2C2.Lever = Config.B2C2.Lever or {}
Config.B2C2.Lever.ESP = Config.B2C2.Lever.ESP or {}
Config.B2C2.Cook = Config.B2C2.Cook or {}
Config.B2C2.Kid = Config.B2C2.Kid or {}
Config.B2C2.Kid.ESP = Config.B2C2.Kid.ESP or {}
Config.B2C2.Nagisa = Config.B2C2.Nagisa or {}
Config.B2C3 = Config.B2C3 or {}
Config.B2C3.Maze = Config.B2C3.Maze or {}
Config.B2C3.Maze.ESP = Config.B2C3.Maze.ESP or {}
Config.B2C3.Larves = Config.B2C3.Larves or {}
Config.B2C3.Larves.ESP = Config.B2C3.Larves.ESP or {}
Config.B2C3.Boss = Config.B2C3.Boss or {}
Config.B2C4 = Config.B2C4 or {}
Config.B2C4.City = Config.B2C4.City or {}
Config.B2C4.City.ESP = Config.B2C4.City.ESP or {}
Config.B2C4.Mall = Config.B2C4.Mall or {}
Config.B2C4.Mall.ESP = Config.B2C4.Mall.ESP or {}
Config.B2C4.Draw = Config.B2C4.Draw or {}
Config.B2C4.Draw.ESP = Config.B2C4.Draw.ESP or {}
Config.B2C4.Enzukai = Config.B2C4.Enzukai or {}
Config.B2C4.Enzukai.ESP = Config.B2C4.Enzukai.ESP or {}
Config.B2C4.Final = Config.B2C4.Final or {}
Config.B3C1 = Config.B3C1 or {}
Config.B3C1.City = Config.B3C1.City or {}
Config.B3C1.City.ESP = Config.B3C1.City.ESP or {}
Config.B3C1.School = Config.B3C1.School or {}
Config.B3C1.School.ESP = Config.B3C1.School.ESP or {}
Config.B3C1.Forest = Config.B3C1.Forest or {}
Config.B3C1.Forest.ESP = Config.B3C1.Forest.ESP or {}
Config.B3C1.IJO = Config.B3C1.IJO or {}
Config.B3C1.IJO.ESP = Config.B3C1.IJO.ESP or {}
Config.B3C1.Water = Config.B3C1.Water or {}
Config.B3C1.Water.ESP = Config.B3C1.Water.ESP or {}
Config.WitchTrial = Config.WitchTrial or {}

local MimicModule = {}
MimicModule.Version = "TheMimicV3.D1"

function MimicModule.Init(CorePackage, IntroLib, ClientPackage, CoruTask, CommonF, ESPF, PromptPackage, DownloadPackage)
    local CoreConnection = {}
    local CoreDestroyed = false
    local ForceFloat = "None"

    local Camera = Workspace.CurrentCamera
    local LocalPlayer = Players.LocalPlayer
    local PlayerGui = LocalPlayer.PlayerGui
    local Backpack = LocalPlayer.Backpack or EMPTY_OBJECT
    local Character = LocalPlayer.Character or EMPTY_OBJECT
    local Humanoid = Character.Parent and Character:FindFirstChildOfClass("Humanoid") or EMPTY_OBJECT
    local HumanoidRootPart = Humanoid.RootPart or EMPTY_OBJECT
    local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts", 9e9)

    local VoidPart = Instance.new("Part")
    local Mouse = LocalPlayer:GetMouse()

    local ClientCon = Config.Client.Client
    local YenCon = Config.Yen
    local B1C4Con = Config.B1C4
    local B2C1Con = Config.B2C1
    local B2C2Con = Config.B2C2
    local B2C3Con = Config.B2C3
    local B2C4Con = Config.B2C4
    local B3C1Con = Config.B3C1

    local NonAnalytics3 = {
        type = "Button",
        EN = "Analytics 3",
        EN2 = "Please enable \"Analytics 3\" module to track game data, inventory, and player statistics for reports and webhook integrations.",
        TH1 = "Analytics 3",
        TH2 = "กรุณาเปิดใช้งานโมดูล \"Analytics 3\" เพื่อติดตามข้อมูลเกม สินค้าคงคลัง และสถิติผู้เล่นสำหรับรายงานและเว็บฮุก"
    }

    local ArgsCraft = {
        [1] = 0,
        [2] = {
            ["__args"] = {},
            ["__tree"] = {
                [1] = "CraftingService",
                [2] = "Interact"
            },
            ["__callType"] = 0
        }
    }

    local Chapter = if PlaceId == 6296321810 or PlaceId == 6479231833 or PlaceId == 6301638949 or PlaceId == 6480994221 then "B1C1"
        elseif PlaceId == 6373539583 or PlaceId == 6485055338 or PlaceId == 6406571212 or PlaceId == 6485055836 or PlaceId == 6425178683 or PlaceId == 6485056556 then "B1C2"
        elseif PlaceId == 6472459099 or PlaceId == 6688734180 or PlaceId == 6682163754 or PlaceId == 6688734313 or PlaceId == 6682164423 or PlaceId == 6688734395 then "B1C3"
        elseif PlaceId == 7251865082 or PlaceId == 7265396387 or PlaceId == 7251866503 or PlaceId == 7265396805 or PlaceId == 7251867155 or PlaceId == 7265397072 or PlaceId == 7251867574 or PlaceId == 7265397848 then "B1C4"
        elseif PlaceId == 8056702588 then "B2C1"
        elseif PlaceId == 13489800654 then "B2C2"
        elseif PlaceId == 15962819441 then "B2C3"
        elseif PlaceId == 96354063422506 then "B2C4"
        elseif PlaceId == 128715637193371 then "B3C1"
        elseif PlaceId == 7068738088 or PlaceId == 7068951438 or PlaceId == 7068739000 or PlaceId == 7068951914 or PlaceId == 7068740106 or PlaceId == 7068952294 then "WitchTrial"
        elseif PlaceId == 6243699076 then "Lobby"
        elseif PlaceId == 7068737459 then "GLobby"
        else nil

    local GameAI, GameAI2 = nil, nil

    local dist = CommonF.dist
    local Tp = CommonF.Tp
    local HumanoidEquip = CommonF.HumanoidEquip
    local Tween = CommonF.Tween
    local Anchored = CommonF.Anchored
    local distOf = CommonF.distOf

    local Functions = {}

    ClientCon.JumpPower = ClientCon.JumpPower or 50
    ClientCon.SpeedMultiplier = ClientCon.SpeedMultiplier or 1
    ClientCon["TeleportWalk Speed"] = ClientCon["TeleportWalk Speed"] or 1

    Functions.GetPing = function()
        return Stats.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
    end

    Functions.GameValidate = function(self)
        if PlaceId == 6243699076 then
            Character:WaitForChild("AntiFly", 9e9).Enabled = false
        end
        if Chapter == "B1C4" or Chapter == "WitchTrial" then
            PlayerScripts:WaitForChild("Anti-Fly", 9e9).Enabled = false
            PlayerScripts:WaitForChild("Anti-Speed", 9e9).Enabled = false
        end
        if PlaceId == 7251867574 or PlaceId == 7265397848 then
            local Katana = Backpack:FindFirstChild("Katana") or Character:FindFirstChild("Katana")
            if not Katana then
                Katana = Backpack:WaitForChild("Katana", 9e9)
            end
            self.Katana = Katana
        end
        if Chapter == "B2C3" then
            local GrabbedUI = PlayerGui:FindFirstChild("QuickTime")
            local BoneSword = Backpack:FindFirstChild("Bone Sword") or Character:FindFirstChild("Bone Sword")
            if not BoneSword then
                task.defer(function() self.BoneSword = Backpack:WaitForChild("Bone Sword", 9e9) end)
            else
                self.BoneSword = BoneSword
            end
            self.GrabbedUI = GrabbedUI and GrabbedUI:FindFirstChild("GrabbedUI")
        end
        if Chapter == "B2C4" then
            local GrabbedUI = PlayerGui:FindFirstChild("QuickTime")
            local Bow = Backpack:FindFirstChild("SpiritBow") or Character:FindFirstChild("SpiritBow")
            if not Bow then
                task.defer(function() self.Bow = Backpack:WaitForChild("SpiritBow", 9e9) end)
            else
                self.Bow = Bow
            end
            self.GrabbedUI = GrabbedUI and GrabbedUI:FindFirstChild("GrabbedUI")
        end
        if Chapter == "B3C1" then
            local Gun = Backpack:FindFirstChild("Gun") or Character:FindFirstChild("Gun")
            if not Gun then
                task.defer(function() self.Gun = Backpack:WaitForChild("Gun", 9e9) end)
            else
                self.Gun = Gun
            end
        end
        if self.AlreadyInit then return end
        self.AlreadyInit = true

        if Chapter == "B2C1" or Chapter == "B2C2" then
            local DynamicControl, GCs = nil, getgc(true)
            for i = 1, #GCs do
                local v = GCs[i]
                if type(v) == "function" then
                    if debug.info(v, "n") == "DynamicControl" then
                        DynamicControl = v
                        break
                    end
                elseif type(v) == "table" then
                    if rawget(v, "TakeOver") then
                        self.TakeOver = v
                    end
                end
            end
            local UPs = getupvalues(DynamicControl)
            for i = 1, #UPs do
                local f1 = UPs[i]
                if type(f1) == "function" then
                    local UPs2 = getupvalues(f1)
                    for i2 = 1, #UPs2 do
                        local v = UPs2[i2]
                        if type(v) == "table" and (v.Interactable or v.Safe) then
                            self.u18 = v
                            break
                        end
                    end
                end
            end
        elseif Chapter == "B2C3" then
            local GamemodeMode = Workspace:GetAttribute("GamemodeMode")
            if not GamemodeMode then
                Workspace:GetAttributeChangedSignal("GamemodeMode"):Once(function()
                    GamemodeMode = Workspace:GetAttribute("GamemodeMode")
                end)
            end
            self.GameMode = GamemodeMode
            self.OneRunHouseClicked = {}
        elseif Chapter == "B2C4" then
            self.AnsweredMother = {
                ["cult name?"] = "Kiiroibara Cult",
                ["I bloom"] = "Cherry Blossom",
                ["Four I shaped in shadows dire—"] = "Evil God",
                ["pink"] = " Hiachi Masashige",
                ["quietly"] = "Torii Gate",
                ["pathetic"] = "Me",
                ["in ink"] = "A brush",
                ["Flames"] = "Enzukai",
                ["guard"] = "A komainu"
            }

            task.spawn(function()
                local Section4 = Workspace:WaitForChild("Section4", 9e9)

                task.spawn(function()
                    self.Tsukiya2 = Section4:WaitForChild("Monster4", 9e9):WaitForChild("Tsukiya2", 9e9)
                end)
                task.spawn(function()
                    self.Tenome2 = Section4:WaitForChild("Monster3", 9e9):WaitForChild("Tenome2", 9e9)
                end)
                task.spawn(function()
                    self.Rin2 = Section4:WaitForChild("Monster2", 9e9):WaitForChild("Rin2", 9e9)
                end)
            end)
        end
    end

    Functions.FreeCam = function(self, isFree)
        Camera = Workspace.CurrentCamera

        if self.TakeOver then
            self.TakeOver:TakeOver(not isFree)
        end

        if Chapter == "B2C1" then
            if isFree then
                Camera.CameraType = Enum.CameraType.Scriptable
            end
        end
    end

    Functions.FreeYourself = function(self)
        if not self.GrabbedUI or not self.GrabbedUI.Visible then
            return
        end
        CommonF:CKey(Enum.KeyCode.E, 0.03)
    end

    Functions.FirePrompt = function(self, args)
        local Prompt = args.Prompt
        local EndAt = args.EndAt
        local LookAt = args.LookAt

        if not Prompt then return end
        local Max = Prompt.MaxActivationDistance
        Prompt.MaxActivationDistance = 250
        Prompt.RequiresLineOfSight = false

        self:FreeCam(true)
        Camera.CFrame = CFrameNew(EndAt.Position, LookAt)
        Tp(HumanoidRootPart, EndAt, 0.3)
        Prompt:InputHoldBegin()
        RunService.RenderStepped:Wait()

        Tp(HumanoidRootPart, args.Safe)
        task.delay(Prompt.HoldDuration - 0.2, function()
            Tp(HumanoidRootPart, EndAt)
        end)
        task.wait(Prompt.HoldDuration)
        Prompt:InputHoldEnd()
        task.wait(0.1)

        self:FreeCam(false)
        Prompt.MaxActivationDistance = Max
    end

    Functions.ToolNow = function(self, index)
        if not Character.Parent then return false end
        local Tool = self[index]
        if Tool and Tool.Parent ~= Character then
            HumanoidEquip(Humanoid, Tool)
        elseif not Tool then
            return false
        end
        return Tool
    end

    Functions.ToolActive = function(self, index)
        local Tool = self:ToolNow(index)
        if Tool then
            return Tool:Activate()
        end
        return
    end

    Functions.AutoCompleteBook1 = function()
        if PlaceId == 6296321810 or PlaceId == 6479231833 then
            return Tp(HumanoidRootPart, CFrameNew(3507, 37.65, -1539.45))
        elseif PlaceId == 6301638949 or PlaceId == 6480994221 then
            return Tp(HumanoidRootPart, CFrameNew(1274.95, 199.54, -2537.93))
        end
        if PlaceId == 6373539583 or PlaceId == 6485055338 then
            return Tp(HumanoidRootPart, CFrameNew(64.88, 55.28, -1590))
        elseif PlaceId == 6406571212 or PlaceId == 6485055836 then
            return Tp(HumanoidRootPart, CFrameNew(235.17, 101.94, -590))
        elseif PlaceId == 6425178683 or PlaceId == 6485056556 then
            return Tp(HumanoidRootPart, CFrameNew(829.97, 72.49, -353.46))
        end
        if PlaceId == 6472459099 or PlaceId == 6688734180 then
            return Tp(HumanoidRootPart, CFrameNew(2411.93, -23.03, 2300))
        elseif PlaceId == 6682163754 or PlaceId == 6688734313 then
            return Tp(HumanoidRootPart, CFrameNew(245.69, 31.72, 450))
        elseif PlaceId == 6682164423 or PlaceId == 6688734395 then
            return Tp(HumanoidRootPart, CFrameNew(-651, 648.99, -1014.35), 5), Tp(HumanoidRootPart, CFrameNew(-644.07, 947.82, -1490))
        end
        if PlaceId == 7251865082 or PlaceId == 7265396387 then
            return Tp(HumanoidRootPart, CFrameNew(91, -48.35, -1416.24))
        elseif PlaceId == 7251866503 or PlaceId == 7265396805 then
            local Children = Workspace.Butterflies:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    Tp(HumanoidRootPart, v.CFrame, 0.3)
                    fireproximityprompt(v.ProximityPrompt, 1)
                end
            end
        elseif PlaceId == 7251867155 or PlaceId == 7265397072 then
            local Children = Workspace.GameInfo.PuzzleItems:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent and v.ProximityPrompt.Enabled then
                    Tp(HumanoidRootPart, v.CFrame, 0.3)
                    fireproximityprompt(v.ProximityPrompt)
                end
            end
            Tp(HumanoidRootPart, CFrameNew(688.41, 28.37, 2251.57), 0.3)
            local Burner = Workspace.Well.Burner
            for i = 1, 6 do
                fireproximityprompt(Burner.ProximityPrompt)
            end
        end
    end

    Functions.ESPMonsterBook1 = function(state)
        if not state then
            return ESPF.Visible("Monster", false)
        else
            if GameAI then
                local Children = GameAI:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        ESPF.ESP("Monster", v, {
                            Color = RED,
                            Size = VEC10,
                            Text = v.Name
                        })
                    end
                end
            end
            if GameAI2 then
                local Children = GameAI2:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent and v.ClassName == "Model" then
                        ESPF.ESP("Monster", v, {
                            Color = RED,
                            Size = VEC10,
                            Text = v.Name
                        })
                    end
                end
            end
            if Chapter == "B1C3" then
                local Omu = Workspace:FindFirstChild("omukadeMAIN")
                local DMGP = Omu and Omu:FindFirstChild("damagepart")
                if DMGP then DMGP.Transparency = 0 end
                if Omu then
                    ESPF.ESP("Monster", DMGP, {
                        Color = RED,
                        Size = VEC10,
                        Text = "Train Chu Chu LOL"
                    })
                end
            end
            ESPF.Visible("Monster", true, true)
        end
        return
    end

    Functions.ESPItemsBook1 = function(state)
        if not state then
            return ESPF.Visible("Items", false)
        else
            local Givers = Workspace:FindFirstChild("Givers")
            if Givers then
                local Children = Givers:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent and v.ClassName == "Model" then
                        ESPF.ESP("Items", v, {
                            Color = WHITE,
                            Size = VEC2,
                            Text = v.Name
                        })
                    end
                end
            end
            if Chapter == "B1C2" or PlaceId == 6682164423 or PlaceId == 6688734395 then
                local Children = Workspace:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent and v.ClassName == "Model" then
                        if v.Name ~= "Key1" and v.Name ~= "Butterfly" and not v:FindFirstChild("ProxPart") then continue end
                        ESPF.ESP("Items", v, {
                            Color = WHITE,
                            Size = VEC2,
                            Text = v.Name
                        })
                    end
                end
            elseif PlaceId == 6472459099 or PlaceId == 6688734180 then
                local Children = Workspace:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        if v.Name ~= "Butterfly" and v.Name ~= "Crowbar" and v.Name ~= "Blade" then continue end
                        ESPF.ESP("Items", v, {
                            Color = WHITE,
                            Size = VEC2,
                            Text = v.Name
                        })
                    end
                end
                ESPF.ESP("Items", Workspace.OfferItem:FindFirstChild("Sword"), {
                    Color = GREEN,
                    Size = VEC2,
                    Text = "Place sword here"
                })
            elseif PlaceId == 6682163754 or PlaceId == 6688734313 then
                local Children = Workspace.BellFolder:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        local Prox = v:FindFirstChild("ProximityPrompt")
                        if not Prox then continue end
                        local ESPObject = ESPF.ESP("Items", v, {
                            Color = if Prox.Enabled then YELLOW else GREEN,
                            Size = VEC2,
                            Text = v.Name
                        })
                        Prox:GetPropertyChangedSignal("Enabled"):Connect(function()
                            ESPObject.UpdateColor(GREEN)
                        end)
                    end
                end
            elseif PlaceId == 7251865082 or PlaceId == 7265396387 then
                local Children = Workspace:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        local Prox = v:FindFirstChild("ProxPart")
                        if Prox then
                            ESPF.ESP("Items", Prox, {
                                Color = WHITE,
                                Size = VEC2,
                                Text = Prox.ProximityPrompt.ObjectText
                            })
                        elseif v:FindFirstChild("Model") and v.Model:FindFirstChild("Model") then
                            local SubProx = v.Model.Model:FindFirstChild("ProxPart", true)
                            if not SubProx then continue end
                            ESPF.ESP("Items", SubProx, {
                                Color = WHITE,
                                Size = VEC2,
                                Text = SubProx.ProximityPrompt.ObjectText
                            })
                        end
                    end
                end
            elseif PlaceId == 7251866503 or PlaceId == 7265396805 then
                local Children = Workspace.Butterflies:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        ESPF.ESP("Items", v, {
                            Color = WHITE,
                            Size = VEC2,
                            Text = v.Name
                        })
                    end
                end
            elseif PlaceId == 7251867155 or PlaceId == 7265397072 then
                local Children1, Children2 = Workspace:GetChildren(), Workspace.GameInfo.PuzzleItems:GetChildren()
                for i = 1, #Children1 do
                    local v = Children1[i]
                    if v.Parent and v.ClassName == "Model" then
                        if v.Name == "Model" and v:FindFirstChild("Spirit") then
                            ESPF.ESP("Items", v.Spirit.ProxPart, {
                                Color = WHITE,
                                Size = VEC2,
                                Text = "Butterfly"
                            })
                        elseif v.Name == "Key" then
                            ESPF.ESP("Items", v, {
                                Color = WHITE,
                                Size = VEC2,
                                Text = v.Name
                            })
                        end
                    end
                end
                for i = 1, #Children2 do
                    local v = Children2[i]
                    if v.Parent then
                        local Prox = v:FindFirstChild("ProximityPrompt")
                        local ESPObject = ESPF.ESP("Items", v, {
                            Color = if Prox and Prox.Enabled then YELLOW else GREEN,
                            Size = VEC2,
                            Text = "Cursed Item"
                        })
                        if Prox then
                            Prox:GetPropertyChangedSignal("Enabled"):Connect(function()
                                ESPObject.UpdateColor(if Prox.Enabled then YELLOW else GREEN)
                            end)
                        end
                    end
                end
            elseif PlaceId == 7251867574 or PlaceId == 7265397848 then
                local Children = Workspace.GameHearts:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        local HPs = v:FindFirstChild("Health")
                        if not HPs then continue end
                        local ESPObject = ESPF.ESP("Items", v, {
                            Color = if HPs.Value > 0 then YELLOW else GREEN,
                            Size = VEC2,
                            Text = v.Name
                        })
                        HPs:GetPropertyChangedSignal("Value"):Connect(function()
                            ESPObject.UpdateColor(if HPs.Value > 0 then YELLOW else GREEN)
                        end)
                    end
                end
            end
        end
        ESPF.Visible("Items", true, true)
    end

    Functions.B2C1Validate = function(self, obj, from)
        if self[obj] then return true end
        local Connections = getconnections(obj[from])
        for i = 1, #Connections do
            local vf = Connections[i]
            if type(vf.Function) == "function" then
                local Cons = getconstants(vf.Function)
                for ri = 1, #Cons do
                    local Con = Cons[ri]
                    if type(Con) == "string" then
                        local Lowerest = string.lower(Con)
                        if Lowerest == "billboardgui" or Lowerest == "highlight" then
                            debug.setconstant(vf.Function, ri, "TJYS")
                        end
                    end
                end
            end
        end
        self[obj] = true
        return self[obj]
    end

    Functions.B2C1Get = function(self, obj)
        local B2C1Cache = self.B2C1Cache
        if not B2C1Cache then
            B2C1Cache = {}
            self.B2C1Cache = B2C1Cache
        end
        if not B2C1Cache[obj] then
            local parts = string.split(obj, ".")
            local resolvedParts = {}
            local skipNext = false
            for i = 1, #parts do
                if skipNext then
                    skipNext = false
                else
                    local part = parts[i]
                    if i < #parts and tonumber(parts[i + 1]) and not tonumber(part) then
                        part = part .. "." .. parts[i + 1]
                        skipNext = true
                    end
                    table.insert(resolvedParts, part)
                end
            end
            parts = resolvedParts

            local current = game
            local startIdx = 1
            if parts[1] == "Workspace" or parts[1] == "workspace" then
                current = Workspace
                startIdx = 2
            end
            for i = startIdx, #parts do
                local name = parts[i]
                local scrambled = self.u18 and self.u18[name] or name
                current = current and current:FindFirstChild(scrambled)
                if not current then break end
            end
            B2C1Cache[obj] = current
        end
        return B2C1Cache[obj]
    end

    Functions.B2C1Func = function(self, where)
        if not HumanoidRootPart.Parent then return end
        if where == "City/Complete" then
            return Tp(HumanoidRootPart, CFrameNew(-1783, 11, -4297))
        elseif where == "Rat/Book" then
            local Object = self:B2C1Get("Workspace.Section2.BookRead.Book")
            if not Object then return end
            local Interact = Object:FindFirstChild("Interact")
            local Prox = Interact and Interact:FindFirstChildOfClass("ProximityPrompt")
            if not Prox or not Prox.Enabled then return end
            return Tp(HumanoidRootPart, Interact.CFrame, 0.3), fireproximityprompt(Prox)
        elseif where == "Rat/Rat" then
            local Object = self:B2C1Get("Workspace.Section2.Rats")
            local Well = self:B2C1Get("Workspace.Section2.Interactable.PoisonedWell.ProximityPrompt")
            local Bell = self:B2C1Get("Workspace.Section2.Interactable.Bell.ProximityPrompt")
            if not Object or not Well or not Bell then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Prox = v:FindFirstChild("Cube")
                    Prox = Prox and Prox:FindFirstChildOfClass("ProximityPrompt")
                    if not Prox then continue end
                    Tp(HumanoidRootPart, Prox.Parent.CFrame, 0.3)
                    fireproximityprompt(Prox)
                    Tp(HumanoidRootPart, Well.Parent.CFrame, 0.3)
                    fireproximityprompt(Well)
                    task.wait(5)
                    Tp(HumanoidRootPart, Bell.Parent.CFrame, 0.3)
                    fireproximityprompt(Bell)
                    break
                end
            end
        elseif where == "Rat/Exit" then
            local Object = self:B2C1Get("Workspace.Section2.Interactable.Exit.ProximityPrompt")
            if not Object or not Object.Enabled then return end
            Tp(HumanoidRootPart, Object.Parent.CFrame, 0.3)
            fireproximityprompt(Object)
        elseif where == "Rat/Run" then
            Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(-960.842529, -44.0736237, -3597.06372)}})
        elseif where == "Nagisa/Auto" then
            ForceFloat = true
            CommonF.Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(208.665894, 573.239563, -345.685211)}})
            task.wait(3)
            CommonF.Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(595.243896, 582.230713, -344.577911)}})
            ForceFloat = "None"
        elseif where == "Nagisa/Run" then
            ForceFloat = true
            CommonF.Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(3868.31982, 153.007477, 17.1698914)}})
            ForceFloat = "None"
        elseif where == "Vil/Zone" then
            Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(4590.5249, 507.557373, 4480.6499)}})
        elseif where == "Vil/Talk" then
            Tp(HumanoidRootPart, CFrameNew(-326.344421, 23.1051254, 3662.32056))
        elseif where == "Vil/Key" then
            Tp(HumanoidRootPart, CFrameNew(-401.797424, 3070.25, 3864.77979), 1)
            local Object = self:B2C1Get("Workspace.Section4")
            if not Object then return end
            local Items = Object:FindFirstChild("Items")
            local Key = Items and Items:FindFirstChild("Key1")
            local Prox = Key and Key:FindFirstChildOfClass("ProximityPrompt")
            if not Prox then return end
            Tp(HumanoidRootPart, Key.CFrame, 0.3)
            fireproximityprompt(Prox)
        elseif where == "Vil/PaintTp" then
            Tp(HumanoidRootPart, CFrameNew(-249.45462, 3067.58838, 4218.84766))
        elseif where == "Vil/Pics" then
            local Object = self:B2C1Get("Workspace.Section4.Puzzle.Hints")
            if not Object then return end
            local Children = Object:GetChildren()

            if not self.Hints then
                self.Hints = Object.ChildAdded:Connect(function(v)
                    if v.ClassName == "Model" then
                        v.ModelStreamingMode = PERSISTENT
                    end
                end)

                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent and v.ClassName == "Model" then
                        v.ModelStreamingMode = PERSISTENT
                    end
                end

                self.Cords = {
                    CFrameNew(-267.697571, 3070.85718, 4213.41504),
                    CFrameNew(590.236572, 3070.94922, 4420.93457),
                    CFrameNew(-675.159424, 3071.0813, 4998.77686),
                    CFrameNew(-392.277039, 3071.03931, 3888.39697),
                    CFrameNew(-10.6637068, 3070.17041, 4711.52637)
                }
            end

            for i = 1, #self.Cords do
                local v = self.Cords[i]
                Tp(HumanoidRootPart, v, 2)
            end
        elseif where == "Vil/House" then
            local Object = self:B2C1Get("Workspace.Section4.HouseTeleporters.MainHouse.Enter.Teleporter.ProximityPrompt")
            if not Object or not Object.Enabled then return end
            Tp(HumanoidRootPart, Object.Parent.CFrame, 0.3)
            for i = 1, 2 do
                fireproximityprompt(Object)
                task.wait(0.3)
            end
        elseif where == "Vil/Candle" then
            local Hints = self:B2C1Get("Workspace.Section4.Puzzle.Hints")
            local Images = self:B2C1Get("Workspace.Section4.Puzzle.Frames")
            local Candles = self:B2C1Get("Workspace.Section4.Puzzle.Candles")
            if not Hints or not Images or not Candles then return end
            local Orb = self:B2C1Get("Workspace.Section4.Puzzle.Gem.Seishin.Orb.ProximityPrompt")
            if not Orb then
                local Pics4, Names = {}, {}
                local Children = Hints:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        local Image = v:FindFirstChild("Image")
                        if not Image then continue end
                        table.insert(Pics4, Image.Decal.Texture)
                    end
                end

                Children = Images:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        local Image = v:FindFirstChild("Image")
                        if not Image then continue end
                        if table.find(Pics4, Image.Decal.Texture) then
                            table.insert(Names, v.Name)
                        end
                    end
                end

                Children = Candles:GetChildren()
                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent then
                        if table.find(Names, v.Name) then
                            local Candle = v:FindFirstChild("Candle")
                            local Wax = Candle and Candle:FindFirstChild("Wax")
                            local Prox = Wax and Wax:FindFirstChildOfClass("ProximityPrompt")
                            if not Prox or not Prox.Enabled then continue end
                            Tp(HumanoidRootPart, Wax.CFrame, 0.3)
                            fireproximityprompt(Prox)
                        end
                    end
                end
                task.wait(1)
            end
            Orb = self:B2C1Get("Workspace.Section4.Puzzle.Gem.Seishin.Orb.ProximityPrompt")
            if Orb and Orb.Enabled then
                Tp(HumanoidRootPart, Orb.Parent.CFrame, 0.3)
                fireproximityprompt(Orb)
            end
            self:B2C1Func("Vil/Talk")
        elseif where == "Ship/Enter" then
            Tp(HumanoidRootPart, CFrameNew(-1250, 4, 6299.65))
        elseif where == "Ship/Candle" then
            local Rituals = self:B2C1Get("Workspace.Section5.RitualLight")
            if not Rituals then return end
            local Children = Rituals:GetChildren()

            if not self.Rituals then
                self.Rituals = Rituals.ChildAdded:Connect(function(v)
                    if v.ClassName == "Model" then
                        v.ModelStreamingMode = PERSISTENT
                    end
                end)

                for i = 1, #Children do
                    local v = Children[i]
                    if v.Parent and v.ClassName == "Model" then
                        v.ModelStreamingMode = PERSISTENT
                    end
                end

                self.Cords = {
                    CFrameNew(-6064, 547, 7146),
                    CFrameNew(-6821, 759, 6431),
                    CFrameNew(-5443, 461, 6336)
                }

                for i = 1, #self.Cords do
                    local v = self.Cords[i]
                    Tp(HumanoidRootPart, v, 0.3)
                end
                Children = Rituals:GetChildren()
            end
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Prox = v:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if not Prox or not Prox.Enabled then continue end
                    ForceFloat = true
                    self:FirePrompt({
                        Safe = Prox.Parent.CFrame * CFrameNew(0, -10, 0),
                        Prompt = Prox,
                        LookAt = Prox.Parent.Position,
                        EndAt = Prox.Parent.CFrame * CFrameNew(0, 3, 0)
                    })
                end
                ForceFloat = "None"
            end
        elseif where == "Ship/Run" then
            Tp(HumanoidRootPart, CFrameNew(-6318.51, 418.696014, 6332.39))
        end
    end

    Functions.B2C1ESP = function(self, where, state)
        self.ESPObjects = self.ESPObjects or {}
        if not state then
            return ESPF.Visible(where, false)
        elseif where == "City/Key" then
            local Object = self:B2C1Get("Workspace.Section1.Items.Key")
            if not Object then return end
            ESPF.ESP(where, Object, {
                Color = WHITE,
                Size = VEC2,
                Text = "Key"
            })
        elseif where == "Rat/Book" then
            local Object = self:B2C1Get("Workspace.Section2.BookRead.Book")
            if not Object then return end
            local ESPObject = ESPF.ESP(where, Object, {
                Color = YELLOW,
                Size = VEC2,
                Text = "Book"
            })
            local Interact = Object:FindFirstChild("Interact")
            if Interact then
                Interact.Destroying:Connect(function()
                    ESPObject.UpdateColor(GREEN)
                end)
            else
                ESPObject.UpdateColor(GREEN)
            end
        elseif where == "Rat/Futakuchi" then
            local Object = self:B2C1Get("Workspace.Section2.Monsters.Futakuchi")
            if not Object then return end
            if self:B2C1Validate(Object, "DescendantAdded") then
                ESPF.ESP(where, Object, {
                    Color = RED,
                    Size = VEC10,
                    Text = "Futakuchi"
                })
            end
        elseif where == "Rat/Rat" then
            local Object = self:B2C1Get("Workspace.Section2.Rats")
            if not Object then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Prox = v:FindFirstChild("Cube")
                    Prox = Prox and Prox:FindFirstChildOfClass("ProximityPrompt")
                    if not Prox then continue end
                    local ESPObject = ESPF.ESP(where, Prox.Parent, {
                        Color = if Prox.Enabled then YELLOW else GREEN,
                        Size = VEC2,
                        Text = "Rat"
                    })
                    if not self.ESPObjects[Prox] then
                        self.ESPObjects[Prox] = Prox:GetPropertyChangedSignal("Enabled"):Connect(function()
                            ESPObject.UpdateColor(if Prox.Enabled then YELLOW else GREEN)
                        end)
                    end
                end
            end
        elseif where == "Vil/Kurobozu" then
            local Object = self:B2C1Get("Workspace.Section4.Monsters.Kurobozu")
            if not Object then return end
            if self:B2C1Validate(Object, "DescendantAdded") then
                ESPF.ESP(where, Object, {
                    Color = RED,
                    Size = VEC10,
                    Text = "Kurobozu"
                })
            end
        elseif where == "Vil/Ohaguro" then
            local Object = self:B2C1Get("Workspace.Section4.Monsters.Ohaguro")
            if not Object then return end
            if self:B2C1Validate(Object, "DescendantAdded") then
                ESPF.ESP(where, Object, {
                    Color = RED,
                    Size = VEC10,
                    Text = "Ohaguro"
                })
            end
        elseif where == "Ship/Monsters" then
            local Object = self:B2C1Get("Workspace.Section5.Monsters")
            if not Object then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    if self:B2C1Validate(v, "DescendantAdded") then
                        ESPF.ESP(where, v, {
                            Color = RED,
                            Size = VEC10,
                            Text = v.Name
                        })
                    end
                end
            end
        end
        ESPF.Visible(where, true, true)
    end

    Functions.GetFromCook = function(Givers, name)
        local Object = Givers and Givers:FindFirstChild(name)
        if not Object then return end
        local Handle = Object:FindFirstChild("Handle")
        local Prox = Handle and Handle:FindFirstChildOfClass("ProximityPrompt")
        if not Prox then return end
        Tp(HumanoidRootPart, Handle.CFrame, 0.3)
        fireproximityprompt(Prox)
    end

    Functions.PlaceCoun = function(Counter)
        local Children = Counter:GetChildren()
        for i = 1, #Children do
            local v = Children[i]
            if v.Parent then
                local Prox = v:FindFirstChildOfClass("ProximityPrompt")
                if not Prox then continue end
                Tp(HumanoidRootPart, Prox.Parent.CFrame, 0.3)
                return fireproximityprompt(Prox)
            end
        end
    end

    Functions.ToStove = function(Prox)
        Tp(HumanoidRootPart, Prox.Parent.CFrame, 0.3)
        fireproximityprompt(Prox)
    end

    Functions.TurnInFood = function(prompt)
        prompt.Parent.Parent.CanCollide = false
        prompt.Enabled = true
        Tp(HumanoidRootPart, prompt.Parent.Parent.CFrame * CFrameNew(0, -3, 0), 0.3)
        fireproximityprompt(prompt)
    end

    Functions.B2C2Func = function(self, where)
        if where == "Statue" then
            local Object = self:B2C1Get("Workspace.Section1.UmiBozuSeeking_Intro_02")
            if not Object then return end
            local Hitbox = Object:FindFirstChild("Hitbox_Entrance")
            if Hitbox:FindFirstChild("TouchInterest") then
                firetouchinterest(HumanoidRootPart, Hitbox, 0)
            end
            Tween({
                primary = HumanoidRootPart,
                goal = {CFrame = CFrameNew(-520, 30, -87.29)}
            })
            Tp(HumanoidRootPart, CFrameNew(-520, 30, -87.2), 0.3)
            Anchored(HumanoidRootPart, true)
            Tp(HumanoidRootPart, CFrameNew(-520, 30, -87.2), 30)
            Anchored(HumanoidRootPart, false)
            Tp(HumanoidRootPart, CFrameNew(-551, 30, -87.29))
        elseif where == "Crounch" then
            local DoorA = self:B2C1Get("Workspace.Section2.Build.ProxDoorA.DoorFrame.ProximityPrompt")
            if DoorA then
                Tp(HumanoidRootPart, DoorA.Parent.CFrame, 0.3)
                fireproximityprompt(DoorA)
                ForceFloat = true
                repeat task.wait(0.1) until self:B2C1Get("Workspace.Section2.Build.ProxDoorB.DoorFrame")
                local DoorB = self:B2C1Get("Workspace.Section2.Build.ProxDoorB.DoorFrame.ProximityPrompt")
                if DoorB then
                    Tp(HumanoidRootPart, DoorB.Parent.CFrame, 0.3)
                    fireproximityprompt(DoorB)
                end
                ForceFloat = false
            end
            Tp(HumanoidRootPart, CFrameNew(-3952.85, 700, 317.7), 70)

            local DoorL = self:B2C1Get("Workspace.Section2.TeleportDoor.PROMPTINHERE.ProximityPrompt")
            if not DoorL then return end
            Tp(HumanoidRootPart, DoorL.Parent.CFrame, 0.3)
            fireproximityprompt(DoorL)
        elseif where == "Meat/Talk" then
            Tp(HumanoidRootPart, CFrameNew(-4443, 711, 1164))
            StarterGui:SetCore("SendNotification", {
                Title = "ALERT",
                Text = "If you just collected meats, wait 11 seconds before talk to this NPC",
                Icon = "rbxassetid://6031071057",
                Duration = 11
            })
        elseif where == "Meat/TpMeat" then
            local MeatRF = self:B2C1Get("Workspace.Section2.Rooms")
            if not MeatRF then return end
            for _, v in pairs(MeatRF:GetChildren()) do
                if v.Name == "RestaurantRoom" then
                    local MeatF = v:FindFirstChild("Meat")
                    if MeatF then
                        local MeatFChild = MeatF:GetChildren()
                        for i = 1, #MeatFChild do
                            if MeatFChild[i].Transparency == 0 then
                                return CommonF.Tp(HumanoidRootPart, MeatFChild[i].CFrame)
                            end
                        end
                    end
                end
            end
        elseif where == "Meat/Exit" then
            local Object = self:B2C1Get("Workspace.Section2.Rooms.EndRoom.DoorTele.DoorFrame.ProximityPrompt")
            if not Object then return end
            Tp(HumanoidRootPart, Object.Parent.CFrame, 0.3)
            fireproximityprompt(Object)
        elseif where == "Meat/Run" then
            ForceFloat = false
            Tp(HumanoidRootPart, CFrameNew(-4590, 843.64, -35.54))
            task.wait(14)
            ForceFloat = true
            task.spawn(function()
                Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(-5364, 682.12, 29.63)}})
            end)
            task.wait(2)
            ForceFloat = "None"
        elseif where == "Lever/Enter" then
            Tp(HumanoidRootPart, CFrameNew(-11035, -81.4, -12.56))
        elseif where == "Lever/Auto" then
            local Object = self:B2C1Get("Workspace.Section3.GATE_SYSTEM_01.Levers")
            if not Object then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Lever = v:FindFirstChild("Lever")
                    local Prox = Lever and Lever:FindFirstChildOfClass("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, Lever.CFrame, 0.3)
                    fireproximityprompt(Prox)
                end
            end
            return task.wait(6), Tp(HumanoidRootPart, CFrameNew(-10060, 484.1, -9.52))
        elseif where == "Math" then
            Tp(HumanoidRootPart, CFrameNew(-2005.8, 968.25, -4909.48))
        elseif where == "Cook/Run" then
            return Tween({
                primary = HumanoidRootPart,
                goal = {CFrame = CFrameNew(-3345.78, 1205, -6794.84)},
                info = TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
            }), task.wait(4), Tp(HumanoidRootPart, CFrameNew(-3347.32, 1205, -6824))
        elseif where == "Cursed/1" then
            Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(-4250.71, 613.7, -968.13)}})
        elseif where == "Cursed/2" then
            Tween({primary = HumanoidRootPart, goal = {CFrame = CFrameNew(-4079.71, 613.7, -968.13)}})
        elseif where == "Cursed/Remove" then
            local Object = self:B2C1Get("Workspace.Section3.5.GAMESTART")
            if not Object then return end
            Object.CanTouch = false
        elseif where == "Kid/Find" then
            local Object = self:B2C1Get("Workspace.Section4.Daughter.IndicatorPic")
            if not Object then return end
            Tp(HumanoidRootPart, Object.CFrame, 0.3)
            Tp(HumanoidRootPart, CFrameNew(-4334.81299, 690.94397, -2363.2771))
        elseif where == "Kid/Gate" then
            local Object = self:B2C1Get("Workspace.Section4.Door.Glowing")
            if not Object then return end
            Tp(HumanoidRootPart, Object.CFrame)
        elseif where == "Kid/Notes" then
            local Object = self:B2C1Get("Workspace.Section4.SlenderGame.Notes")
            if not Object then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Prox = v:FindFirstChildOfClass("ProximityPrompt")
                    if not Prox and not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, v.CFrame, 0.3)
                    fireproximityprompt(Prox)
                end
            end
        end
    end

    Functions.B2C2ESP = function(self, where, state)
        if not state then
            return ESPF.Visible(where, false)
        elseif where == "Meat/Ashina" then
            local Object = self:B2C1Get("Workspace.Section2.Monsters.Ashina")
            if not Object then return end
            if self:B2C1Validate(Object, "DescendantAdded") then
                ESPF.ESP(where, Object, {
                    Color = RED,
                    Size = VEC10,
                    Text = "Ashina"
                })
            end
        elseif where == "Meat/Meats" then
            local MeatRF = self:B2C1Get("Workspace.Section2.Rooms")
            if not MeatRF then return end
            for _, v in pairs(MeatRF:GetChildren()) do
                if v.Name == "RestaurantRoom" then
                    local MeatF = v:FindFirstChild("Meat")
                    if MeatF then
                        local MeatFChild = MeatF:GetChildren()
                        for i = 1, #MeatFChild do
                            if MeatFChild[i].Transparency == 0 then
                                ESPF.ESP(where, MeatFChild[i], {
                                    Color = WHITE,
                                    Size = VEC2,
                                    Text = "Meat"
                                })
                            end
                        end
                    end
                end
            end
        elseif where == "Lever/Levers" then
            local Object = self:B2C1Get("Workspace.Section3.GATE_SYSTEM_01.Levers")
            if not Object then return end
            local Children = Object:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Lever = v:FindFirstChild("Lever")
                    local Prox = Lever and Lever:FindFirstChildOfClass("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    ESPF.ESP(where, Lever, {
                        Color = WHITE,
                        Size = VEC2,
                        Text = "Lever"
                    })
                end
            end
        elseif where == "Math" then
            local MidANumber, MidBNumber = nil, nil
            local SymbolsAImage1, SymbolsAImage2 = nil, nil
            local SymbolsBImage1, SymbolsBImage2 = nil, nil
            local SymbolsANumber1, SymbolsANumber2 = nil, nil
            local SymbolsBNumber1, SymbolsBNumber2 = nil, nil
            local Descen = Workspace:GetDescendants()
            for i, v in ipairs(Descen) do
                if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    MidANumber = v.Text
                end
                if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    MidBNumber = v.Text
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    SymbolsAImage1 = v.Image
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    SymbolsBImage1 = v.Image
                end
            end
            for i, v in ipairs(Descen) do
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    if v.Image ~= SymbolsAImage1 then
                        SymbolsAImage2 = v.Image
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    if v.Image ~= SymbolsBImage1 then
                        SymbolsBImage2 = v.Image
                    end
                end
            end
            for i, v in ipairs(Descen) do
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsAImage1 then
                        SymbolsANumber1 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsAImage2 then
                        SymbolsANumber2 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsBImage1 then
                        SymbolsBNumber1 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsBImage2 then
                        SymbolsBNumber2 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
            end
            local Answer1 = tostring(MidANumber - (SymbolsANumber1 + SymbolsANumber2))
            local Answer2 = tostring(MidBNumber - (SymbolsBNumber1 + SymbolsBNumber2))
            for i, v in ipairs(Descen) do
                if v.ClassName == "TextLabel" and v.Parent.Parent.Parent.Name == "Kanji" then
                    for _, sec in ipairs(Descen) do
                        if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsA" then
                            if v.Text == Answer1 then
                                local HackImage1 = v.Parent:Clone()
                                HackImage1.Parent = sec
                            end
                        end
                        if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsB" then
                            if v.Text == Answer2 then
                                local HackImage2 = v.Parent:Clone()
                                HackImage2.Parent = sec
                            end
                        end
                    end
                end
            end
        elseif where == "Kid/Mother" then
            local Object = Functions:B2C1Get("Workspace.Section4.Monsters.Mother.HumanoidRootPart")
            if not Object then return end
            if self:B2C1Validate(Object, "DescendantAdded") then
                ESPF.ESP(where, Object, {
                    Color = RED,
                    Size = VEC10,
                    Text = "Mother"
                })
            end
        end
        ESPF.Visible(where, true, true)
    end

    Functions.INVBP = function()
        PlayerGui.Inventory.LocalScript.Enabled = false
        PlayerGui.Inventory.LocalScript.Enabled = true
    end

    Functions.B2C3CanCraft = function(Children)
        local Count = 0
        for i = 1, #Children do
            local v = Children[i]
            if v.Parent then
                if v.Name == "Stick" or v.Name == "Cloth" then
                    Count += 1
                end
            end
        end
        return Count >= 3
    end

    Functions.B2C3Click = function(self, name)
        if not table.find(self.OneRunHouseClicked, name) then
            table.insert(self.OneRunHouseClicked, name)
            ReplicatedStorage.Packages.Packet.PacketFunction:InvokeServer(0, {
                __args = {[1] = name},
                __tree = {[1] = "IspyService", [2] = "Clicked"},
                __callType = 0
            })
            task.wait()
        end
    end

    Functions.B2C3Func = function(self, where)
        if where == "Gozu" then
            Tp(HumanoidRootPart, CFrameNew(-582, 38, 417))
        elseif where == "Heart/Talk" then
            Tp(HumanoidRootPart, CFrameNew(-138, 45, 79))
        elseif where == "Heart/Auto" then
            local Hearts = Workspace.Section1.Puzzle.Hearts:GetChildren()
            for i = 1, #Hearts do
                local v = Hearts[i]
                if v.Parent then
                    local Prox = v:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, v.Heart.CFrame, 0.3)
                    fireproximityprompt(Prox)
                end
            end

            local Children = Workspace.Section1.Puzzle.SpinModel:GetChildren()
            for i = 1, #Children do
                local arm = Children[i]
                if arm.Parent and arm.ClassName == "Model" then
                    local BeatingHeart = arm:FindFirstChild("BeatingHeart")
                    local Heart = BeatingHeart and BeatingHeart:FindFirstChild("Heart")
                    local Prox = Heart and Heart:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    local BPHeart = Backpack:FindFirstChild("Heart")
                    if BPHeart then
                        HumanoidEquip(Humanoid, BPHeart)
                    end
                    Tp(HumanoidRootPart, Heart.CFrame, 0.3)
                    fireproximityprompt(Prox)
                end
            end
        elseif where == "Heart/Run" then
            ForceFloat = true
            Tp(HumanoidRootPart, CFrameNew(-101, 42, -395), 0.3)
            local Children = Workspace.Section1.Maze.Doors2:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Main = v:FindFirstChild("MAIN")
                    if not Main or dist(Main.Position) > 30 then continue end
                    fireproximityprompt(Main.ProximityPrompt)
                    break
                end
            end
            ForceFloat = "None"
        elseif where == "Maze/Craft" then
            local Holes = Workspace.Section1.Maze.Holes:GetChildren()
            local Tables = Workspace.Section1.Maze.Crafting.Tables:GetChildren()

            ForceFloat = true
            for i = 1, #Holes do
                local v = Holes[i]
                if v.Parent then
                    local Prox = v:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, v.CFrame, 0.3)
                    fireproximityprompt(Prox)
                end
                if self.B2C3CanCraft(Backpack:GetChildren()) then break end
            end
            Tp(HumanoidRootPart, CFrameNew(-78, 4, -442), 1)

            for i = 1, #Tables do
                local v = Tables[i]
                if v.Parent then
                    local Root = v:FindFirstChild("RootPart")
                    if dist(Root.Position) > 30 then continue end
                    local Prox = Root and Root:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, Root.CFrame, 0.3)
                    fireproximityprompt(Prox)
                    ReplicatedStorage.Packages.Packet.PacketFunction:InvokeServer(unpack(ArgsCraft))
                    task.wait(0.3)
                    PlayerGui.Crafting.Frame.Visible = false
                    break
                end
            end
            ForceFloat = "None"
        elseif where == "Maze/Fire" then
            local Maze = Workspace.Section1.Maze
            local GrinDemon = if self.GameMode == "Normal" then Maze.GrinDemon else Maze.GrinDemonNM
            local Children = Maze.Crafting.ArmFlames:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Flame = v:FindFirstChild("UndyingFlame")
                    if distOf(Flame, GrinDemon.HumanoidRootPart, 20) then continue end
                    local Prox = Flame and Flame:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, Flame.CFrame, 0.3)
                    fireproximityprompt(Prox)
                    break
                end
            end
        elseif where == "Maze/Escape" then
            Tp(HumanoidRootPart, CFrameNew(-74, 5.2, -880))
        elseif where == "Bell/Zone" then
            Tp(HumanoidRootPart, CFrameNew(-325.5, 15, -1114))
        elseif where == "Bell/Flys" then
            for amount = 1, 2 do
                local Flies = Workspace.Section2.FlyNoobs.Flies:GetChildren()
                for i = 1, #Flies do
                    local Area = Flies[i]
                    if Area.Parent then
                        local Children = Area:GetChildren()
                        for ri = 1, #Children do
                            local v = Children[ri]
                            if v.Parent and v.ClassName == "Model" then
                                local Hitbox = v:FindFirstChild("FlyHitbox")
                                if not Hitbox or v.eyes.Transparency == 1 then continue end
                                if self:ToolNow("BoneSword") then
                                    Tp(HumanoidRootPart, Hitbox.CFrame)
                                    self:ToolActive("BoneSword")
                                    task.wait(3)
                                end
                            end
                        end
                    end
                end
            end
        elseif where == "Bell/Auto" then
            local Bells = Workspace.Section2.Bells
            local Colors = {
                Black = Color3FromRGB(17, 17, 17),
                White = Color3FromRGB(248, 248, 248),
                Red = Color3FromRGB(248, 0, 0)
            }
            local IsSoundPlay = function(sound)
                return sound.IsPlaying or sound.TimePosition > 0
            end
            local Remote = ReplicatedStorage.Packages.Packet.PacketFunction

            local AddChild = function(Bell)
                local Buttons = Bell:WaitForChild("2", 10)
                local Base = Buttons:WaitForChild("Base")
                local Select = Base:WaitForChild("Select")
                local PlayerSelect = Base:WaitForChild("PlayerSelect")
                local ProximityPrompt = Base:WaitForChild("ProximityPrompt")
                local BellModel = Bell:WaitForChild("BellModel")
                local BellAnimationController = BellModel:WaitForChild("AnimationController")
                local HandMinions = Bell:WaitForChild("HandMinions")

                local IsFinished = false
                BellAnimationController.AnimationPlayed:Once(function()
                    IsFinished = true
                end)

                local ThreadLoop, Pattern, Threads = false, {}, {}
                local Children = Buttons:GetChildren()
                for i = 1, #Children do
                    local Button = Children[i]
                    if Button.Parent and Button.Name == "Buttons" then
                        Threads[#Threads + 1] = Button:GetPropertyChangedSignal("Color"):Connect(function()
                            if Button.Color == Colors.White then
                                task.delay(0.1 + math.clamp(self.GetPing(), 0, 0.5), function()
                                    if IsSoundPlay(Select) then
                                        Pattern[#Pattern + 1] = Button
                                    end
                                end)
                            elseif Button.Color == Colors.Red then
                                Pattern = {}
                            end
                        end)
                    end
                end

                Threads[#Threads + 1] = RunService.Heartbeat:Connect(function()
                    if HandMinions:GetAttribute("Health") <= 0 or HandMinions:GetAttribute("CanDamage") then
                        IsFinished = true
                        task.defer(function()
                            for i = 1, #Threads do
                                Threads[i]:Disconnect()
                            end
                        end)
                    end
                    if IsFinished then return end
                    if #Pattern >= 5 and not ThreadLoop then
                        ThreadLoop = true
                        task.wait(1 + math.clamp(self.GetPing(), 0, 0.5))
                        for index = 1, #Pattern do
                            local Button = Pattern[index]
                            Remote:InvokeServer(0, {
                                __args = {[1] = Button},
                                __tree = {
                                    [1] = "PuzzleService",
                                    [2] = "Clicked"
                                },
                                __callType = 0
                            })
                            task.wait(0.03)
                        end
                        Remote:InvokeServer(0, {
                            __args = {},
                            __tree = {
                                "PuzzleService",
                                "ExitPuzzle"
                            },
                            __callType = 0
                        })
                        task.wait(0.3)
                        Pattern = {}
                        ThreadLoop = false
                    end
                end)
            end

            local Children = Bells:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    AddChild(v)
                end
            end

            local DodoMeki = Workspace.Section2.Monster.Dodomeki.Head
            repeat
                local AllCompleted = true
                local BellList = Bells:GetChildren()
                for i = 1, #BellList do
                    local v = BellList[i]
                    if v.Parent then
                        local Obj2 = v:FindFirstChild("2")
                        local HandMinions = v:FindFirstChild("HandMinions")
                        if not Obj2 or not HandMinions then continue end
                        local Base = Obj2:FindFirstChild("Base")
                        local Prompt = Base and Base:FindFirstChild("ProximityPrompt")
                        local Hitbox = HandMinions:FindFirstChild("Hitbox1")

                        if Prompt and Hitbox and HandMinions:GetAttribute("Health") > 0 then
                            AllCompleted = false
                            while HandMinions:GetAttribute("Health") > 0 and v.Parent do
                                if DodoMeki.CFrame.Position.Y <= 60 then return end
                                if not HandMinions:GetAttribute("CanDamage") then
                                    Tp(HumanoidRootPart, Base.CFrame, 0.5)
                                    if Prompt.Enabled then
                                        fireproximityprompt(Prompt)
                                        task.wait(5.3)
                                    end
                                elseif not PlayerGui.QuickTime.GrabbedUI.Visible then
                                    if self:ToolNow("BoneSword") then
                                        Tp(HumanoidRootPart, Hitbox.CFrame)
                                        self:ToolActive("BoneSword")
                                    end
                                end
                                task.wait(0.1)
                            end
                        end
                    end
                end
                task.wait(1)
            until DodoMeki.Head.CFrame.Position.Y <= 60 or AllCompleted
        elseif where == "Bell/Puzzle" then
            local Children = Workspace.Section2.PuzzleDoor.Doors:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Shapes = v:FindFirstChild("Shapes")
                    local Combos = Shapes and Shapes:FindFirstChild("Combos")
                    if not Combos or Combos.Position.Y < 0 then continue end
                    local SurfaceGui = Combos:FindFirstChild("SurfaceGui")
                    if not SurfaceGui then continue end
                    local Children2 = SurfaceGui:GetChildren()
                    if #Children2 == 0 then continue end
                    local rv = {}
                    for ri = 1, #Children2 do
                        table.insert(rv, Children2[ri].Name)
                    end
                    Tp(HumanoidRootPart, Combos.CFrame, 0.3)
                    fireproximityprompt(v.DoorDetector.ProximityPrompt)
                    return ReplicatedStorage.Packages.Packet.PacketFunction:InvokeServer(0, {
                        __args = {[1] = rv},
                        __tree = {
                            [1] = "DoorPuzzleService",
                            [2] = "Clicked"
                        },
                        __callType = 0
                    })
                end
            end
        elseif where == "Bell/TpDoor" then
            local Children = Workspace.Section2.PuzzleDoor.Doors:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Shapes = v:FindFirstChild("Shapes")
                    local Combos = Shapes and Shapes:FindFirstChild("Combos")
                    if not Combos or Combos.Position.Y < 0 then continue end
                    local SurfaceGui = Combos:FindFirstChild("SurfaceGui")
                    if not SurfaceGui then continue end
                    local Children2 = SurfaceGui:GetChildren()
                    if #Children2 == 0 then continue end
                    return Tp(HumanoidRootPart, Combos.CFrame, 0.3)
                end
            end
        elseif where == "Bell/Run" then
            Tp(HumanoidRootPart, CFrameNew(-3888, -55, -2289))
        elseif where == "Enzukai/Enter" then
            local Children = {Workspace["Section2.5"].MindGame.Intro.Trigger, Workspace["Section2.5"].MindGame.Intro.Trigger2}
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    Tp(HumanoidRootPart, v.CFrame, 0.3)
                end
            end
        elseif where == "Enzukai/Auto" then
            local Children = Workspace["Section2.5"].MindGame.Boats:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Assign = v:FindFirstChild("AssignedPlayer")
                    if Assign.Value ~= LocalPlayer then continue end
                    local Enzukai = v:FindFirstChild("EnzukaiGame")
                    local Root = Enzukai and Enzukai:FindFirstChild("RootPart")
                    local ProxAt = Root and Root:FindFirstChild("PromptAttachment")
                    local Prox = ProxAt and ProxAt:FindFirstChild("ProximityPrompt")
                    while Prox and Prox.Parent and Enzukai.Parent do
                        if Prox.Enabled then
                            fireproximityprompt(Prox)
                        end
                        task.wait(0.1)
                    end
                    break
                end
            end
        elseif where == "Father/Isamu" then
            Workspace.Section3.IsamuAI.Hitbox.CanTouch = false
        elseif where == "Father/Auto" then
            Tp(HumanoidRootPart, CFrameNew(1136, 30, -2400))
        elseif where == "Train" then
            Tp(HumanoidRootPart, Workspace["Section3.5"].GhostTrain.TrainTrigger.CFrame)
        elseif where == "Larves" then
            local Dog = Workspace.Section4.DogWall.RootPart.ProximityPrompt
            local Children = Workspace.Section4.HotPotato.Givers:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Root = v:FindFirstChild("RootPart")
                    local Prox = Root and Root:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, Root.CFrame, 0.3)
                    fireproximityprompt(Prox)
                    break
                end
            end
            Tp(HumanoidRootPart, Dog.Parent.CFrame, 0.3)
            fireproximityprompt(Dog)
        elseif where == "Mud" then
            Tp(HumanoidRootPart, Workspace["Section4.5"].TeleportToSection5.CFrame)
        elseif where == "Yurei/House" then
            local Children = Workspace.Section5.ISPY.Houses:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local PlayerObj = v:FindFirstChild("Player")
                    local Root = PlayerObj and PlayerObj:FindFirstChild("HumanoidRootPart")
                    local Prox = Root and Root:FindFirstChild("ProximityPrompt")
                    if not Prox or not Prox.Enabled then continue end
                    Tp(HumanoidRootPart, Root.CFrame, 0.3)
                    fireproximityprompt(Prox)
                    break
                end
            end
        elseif where == "Yurei/Click" then
            local Children = Workspace.Section5.ISPY.Houses:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local PlayerObj = v:FindFirstChild("Player")
                    local Root = PlayerObj and PlayerObj:FindFirstChild("HumanoidRootPart")
                    if dist(Root.Position) > 50 then continue end

                    local Items = v.Items:GetChildren()
                    for index = 1, #Items do
                        local ItemName = Items[index].Name
                        local Text = PlayerGui.Section5.TextLabel.Text
                        if string.find(Text, ItemName) then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Teddy Bear") and ItemName == "TeddyBear" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Traditional Lantern") and ItemName == "TraditionalLantern" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Japanese Stone Lantern") and ItemName == "JapaneseStoneLantern" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Rubber Duck") and ItemName == "RubberDuck" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Working Lantern") and ItemName == "WorkingLantern" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Sun Symbol") and ItemName == "SunSymbol" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Kintoru Head") and ItemName == "KintoruHead" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Mail Box") and ItemName == "MailBox" then
                            self:B2C3Click(ItemName, v.Name)
                        elseif string.find(Text, "Rice Barrel") and ItemName == "RiceBarrel" then
                            self:B2C3Click(ItemName, v.Name)
                        end
                        task.wait(0.3)
                    end
                end
            end
        elseif where == "Boss/TpSafe" then
            if self:B2C3Func("Boss/Map") then
                Tp(HumanoidRootPart, CFrameNew(3078, 17, -540))
            end
        elseif where == "Boss/Map" then
            if self.MapC then return true end
            self.MapC = true
            local Children = Workspace.Section5.Boss.Build:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    if v.Name == "c01-15k" or v.Name == "InvisWall" then
                        v:Destroy()
                    end
                end
            end
            return true
        elseif where == "Boss/Katanas" then
            if self:B2C3Func("Boss/Map") then
                local Children, CO = Workspace.Section5.Boss.Katanas:GetChildren(), 0
                for i = 1, #Children do
                    if CO > 4 then return end
                    ForceFloat = true
                    local v = Children[i]
                    if v.Parent and v.Transparency == 0 then
                        Tp(HumanoidRootPart, v.CFrame * CFrameNew(15, 0, 0), 0.3)
                        fireproximityprompt(v.ProximityPrompt)
                        CO += 1
                    end
                    ForceFloat = "None"
                end
                Functions:B2C3Func("Boss/TpSafe")
            end
        elseif where == "Hell/Run" then
            Tp(HumanoidRootPart, CFrameNew(-1697, 246, 7806))
        end
    end

    Functions.B2C3ESP = function(self, where, state)
        if not state then
            return ESPF.Visible(where, false)
        elseif where == "Maze/GrinDemon" then
            local Maze = Workspace.Section1.Maze
            local GrinDemon = if self.GameMode == "Normal" then Maze.GrinDemon else Maze.GrinDemonNM
            if not GrinDemon then return end
            ESPF.ESP(where, GrinDemon, {
                Color = RED,
                Size = VEC10,
                Text = "Grin Demon"
            })
        elseif where == "Larves/Larves" then
            local Children = Workspace.Section4.HotPotato.Givers:GetChildren()
            for i = 1, #Children do
                local v = Children[i]
                if v.Parent then
                    local Root = v:FindFirstChild("RootPart")
                    local Prox = Root and Root:FindFirstChild("ProximityPrompt")
                    if not Prox then continue end
                    local ESPObject = ESPF.ESP(where, Root, {
                        Color = if Prox.Enabled then YELLOW else GREEN,
                        Size = VEC2,
                        Text = "Larves"
                    })
                    if not ESPObject.ChangeSignal then
                        ESPObject.ChangeSignal = Prox:GetPropertyChangedSignal("Enabled"):Connect(function()
                            ESPObject.UpdateColor(if Prox.Enabled then YELLOW else GREEN)
                        end)
                    end
                end
            end
        elseif where == "Larves/Soldier" then
            local CMs = {
                Workspace.Section4.StatueMonsters.Left,
                Workspace.Section4.StatueMonsters.Right
            }
            for i = 1, #CMs do
                local Children = CMs[i]:GetChildren()
                for ri = 1, #Children do
                    local v = Children[ri]
                    if v.Parent then
                        ESPF.ESP(where, v, {
                            Color = RED,
                            Size = VEC10,
                            Text = "Soldier"
                        })
                    end
                end
            end
        elseif where == "Larves/Boogey" then
            local BoogeymanAI = Workspace.Section4.Monster:FindFirstChild("BoogeymanAI")
            if not BoogeymanAI then return end
            ESPF.ESP(where, BoogeymanAI, {
                Color = RED,
                Size = VEC10,
                Text = "Boogeyman"
            })
        end
        ESPF.Visible(where, true, true)
    end

    Functions.B2C4BP1 = function()
        local ScreenGui = PlayerGui:FindFirstChild("ScreenGui")
        if ScreenGui then
            ScreenGui.Enabled = false
            local Frame = ScreenGui:FindFirstChild("Frame")
            if Frame then Frame.Visible = false end
        end

        local Remote = Workspace.Section1.PlayerObjective:FindFirstChild("Remote")
        if Remote then Remote:FireServer(1) end
    end

    Functions.B2C4BP2 = function()
        local RunService = game:GetService("RunService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")

        local spr = require(ReplicatedStorage._Libraries.spr)
        local Controllers = require(ReplicatedStorage.Client.Controllers)

        local scriptInstance = LocalPlayer.PlayerGui["S2.5"].LocalScript
        local Section = Workspace:WaitForChild("Section2.5")
        local TriviaGame = Section:WaitForChild("ChihiroMinigame"):WaitForChild("Trivia")
        local MonsterMother = TriviaGame:WaitForChild("Monster", math.huge):WaitForChild("Mother", math.huge)
        local SignalRemote = TriviaGame:WaitForChild("Signal")
        local TriviaUI = scriptInstance.Parent

        local function CreateCornerElement(isTop, isLeft)
            local canvasGroup = Instance.new("CanvasGroup")
            canvasGroup.BackgroundTransparency = 1
            canvasGroup.BorderSizePixel = 0
            canvasGroup.ZIndex = 2
            canvasGroup.Size = UDim2.fromScale(0.5, 0.5)
            canvasGroup.Position = UDim2.fromScale(isLeft and 0 or 1, isTop and 0 or 1)
            canvasGroup.Name = ""

            local aspectRatio = Instance.new("UIAspectRatioConstraint")
            aspectRatio.AspectRatio = 1
            aspectRatio.Parent = canvasGroup

            local function CreateFrame(isHorizontal)
                local frame = Instance.new("Frame")
                frame.Size = UDim2.fromScale(isHorizontal and 1 or 0.1, isHorizontal and 0.1 or 1)
                frame.BackgroundColor3 = Color3FromRGB(255, 255, 255)
                frame.BorderSizePixel = 0
                frame.Position = UDim2.fromScale(isLeft and 0 or (isHorizontal and 0 or 0.9), isTop and 0 or (isHorizontal and 0.9 or 0))
                frame.Parent = canvasGroup
                return frame
            end

            CreateFrame(true)
            CreateFrame(false)

            canvasGroup.Parent = TriviaUI
            return canvasGroup
        end
    end

    MimicModule.Functions = Functions
    return Functions
end

return MimicModule
