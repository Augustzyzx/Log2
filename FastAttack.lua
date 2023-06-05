coroutine.wrap(function()
			while task.wait(.1) do
				local ac = CombatFrameworkR.activeController
				if ac and ac.equipped then
					if _G.Settings.Configs["Fast Attack"] then
						AttackNoCD()
						if _G.Settings.Configs["Fast Attack"] then
							if tick() - cooldownfastattack > 0.5 then wait(.2) cooldownfastattack = tick() end
						end
					elseif _G.Settings.Configs["Fast Attack"] == true then
						if ac.hitboxMagnitude ~= 55 then
							ac.hitboxMagnitude = 55
						end
					if _G.Settings.Configs["Fast Attack"] == false then
						require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 50
						end
						ac:attack()
					end
				end
			end
		end)()

local X = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local Bypass = require(game.ReplicatedStorage.Util.CameraShaker)
Bypass:Stop()
coroutine.wrap(function()
    game:GetService("RunService").Stepped:Connect(function()
        if getupvalues(X)[2]['activeController'].timeToNextAttack then
            getupvalues(X)[2]['activeController'].timeToNextAttack = 0
            getupvalues(X)[2]['activeController'].timeToNextAttack = 0
            getupvalues(X)[2]['activeController'].hitboxMagnitude = 50
            getupvalues(X)[2]['activeController']:attack()
        end
    end)
end)

local X = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local Bypass = require(game.ReplicatedStorage.Util.CameraShaker)
Bypass:Stop()
coroutine.wrap(function()
    game:GetService("RunService").Stepped:Connect(function()
    if _G.Settings.Configs["Fast Attack"] then
        if  getupvalues(Y)[2]['activeController'].timeToNextAttack then
            getupvalues(Y)[2]['activeController'].timeToNextAttack = 0
            getupvalues(Y)[2]['activeController'].timeToNextAttack = 0
            getupvalues(Y)[2]['activeController'].hitboxMagnitude = 200
            getupvalues(Y)[2]['activeController']:attack()
        end
        end
    end)
end)()

local CombatFrameworkROld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local CombatFrameworkR = getupvalues(CombatFrameworkROld)[2]
	local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
	CameraShakerR:Stop()
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				CombatFrameworkR.activeController.hitboxMagnitude = 55
					if _G.Settings.Configs["Fast Attack"] then
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
						CombatFrameworkR.activeController.timeToNextAttack = 3
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") then
						CombatFrameworkR.activeController.timeToNextAttack = 4
						else
						CombatFrameworkR.activeController.timeToNextAttack = 0
						CombatFrameworkR.activeController.attacking = false
						CombatFrameworkR.activeController.increment = 3
						CombatFrameworkR.activeController.blocking = false
						CombatFrameworkR.activeController.timeToNextBlock = 0
						game.Players.LocalPlayer.Character.Humanoid.Sit = false	
					end
				end
			end)
		end)
	end)

coroutine.wrap(function()
local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
    for v,v in pairs(getreg()) do
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
             for v,v in pairs(debug.getupvalues(v)) do
                if typeof(v) == "table" then
                    spawn(function()
                        game:GetService("RunService").RenderStepped:Connect(function()
                            if _G.Settings.Configs["Fast Attack"] then
                                 pcall(function()
                                     v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                     v.activeController.attacking = false
                                     v.activeController.increment = 4
                                     v.activeController.blocking = false   
                                     v.activeController.hitboxMagnitude = 150
    		                         v.activeController.humanoid.AutoRotate = true
    	                      	     v.activeController.focusStart = 0
    	                      	     v.activeController.currentAttackTrack = 0
                                     sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
                                 end)
                             end
                         end)
                    end)
                end
            end
        end
    end
end)();

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(SeraphFrame) == "function" and getfenv(SeraphFrame).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(SeraphFrame)) do
             if typeof(SeraphFrame) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if _G.Settings.Configs["Fast Attack"] then
                            pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") then
									SeraphFrame.activeController.increment = 3
								else
									SeraphFrame.activeController.increment = 4
								end             
                                CameraShaker:Stop()
                                SeraphFrame.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                SeraphFrame.activeController.attacking = false
								SeraphFrame.activeController.timeToNextBlock = 0
                                SeraphFrame.activeController.blocking = false                            
                                SeraphFrame.activeController.hitboxMagnitude = 200
    		                    SeraphFrame.activeController.humanoid.AutoRotate = true
    	                      	SeraphFrame.activeController.focusStart = 0
                            end)
                        end
                    end)
                end)
            end
        end
    end
end

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

task.spawn(function()
    local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFrameworkR = getupvalues(CombatFrameworkOld)[2]
    local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

    function maxincrement()
        return #CombatFrameworkR.activeController.anims.basic
    end

    spawn(function()
        local old
        old = hookmetamethod(game, "__namecall",function(self,...)
            local method = getnamecallmethod() local args = {...}
            if method:lower() == "fireserver" then
                if args[1] == "hit" then
                    args[3] = maxincrement()
                    return old(self,unpack(args))
                end 
            end
        return old(self,...)
        end) 
    end)
end)

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then 
    return 
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do 
        ret = ret.Parent end
    return ret
end

function AttackNoCD(Num)
    if Num == 1 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                    end
                end)
            end
        end
    elseif Num == 0 then
        local AC = CbFw2.activeController
        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
                pcall(function()
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                        for i,CombatFrameworkR in pairs(CbFw) do
                            pcall(function()
                                if i == 2 then
                                    local AC = CbFw2.activeController
                                    local CSR = require(game.ReplicatedStorage.Util.CameraShaker)
                                    CSR:Stop()
                                    CombatFrameworkR.activeController.attacking = false
                                    CombatFrameworkR.activeController.blocking = false
                                    CombatFrameworkR.activeController.focusStart = 1655503339.0980349
                                    CombatFrameworkR.activeController.increment = 4
                                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                                    CombatFrameworkR.activeController.timeToNextBlock = tick()
                                    CombatFrameworkR.activeController.timeToNextAttack = tick()
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):ClickButton1(Vector2.new(1300,760), game:GetService("Workspace").Camera.CFrame)
                                    AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                                end
                            end)
                        end
                    end
                end)
            end
        end
    end
end

local STOP = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)

if not shared.orl then
    shared.orl = STOPRL.wrapAttackAnimationAsync
end

if not shared.cpc then
    shared.cpc = STOP.play 
end

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
            local Hits = STOPRL.getBladeHits(b,c,d)
            if Hits then
                STOP.play = function() end
                a:Play(0.01,0.01,0.01)
                func(Hits)
                STOP.play = shared.cpc
                wait(a.length * 0.5)
                a:Stop()
            end
        end
    end)
end)

-- LPH_JIT_MAX(function()

task.spawn(function()
    while wait(0.1) do 
        pcall(function()
			if _G.Settings.Configs["Fast Attack"] then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and _G.Settings.Configs["Fast Attack"] then
					AttackNoCD(0)
				end
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and _G.Settings.Configs["Fast Attack"] then
					AttackNoCD(0)
				end
			else
				if ac.hitboxMagnitude ~= 200 then
					ac.hitboxMagnitude = 200
				end
				ac:attack()
			end
        end)
    end
end)

task.spawn(function()
    while wait(0.1) do
        pcall(function()
			if _G.Settings.Configs["Fast Attack"] then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and _G.Settings.Configs["Fast Attack"] then
					AttackNoCD(1)
				end
				_G.Settings.Configs["Fast Attack"] = true
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and _G.Settings.Configs["Fast Attack"] then
					AttackNoCD(1)
				end
			else
				if ac.hitboxMagnitude ~= 200 then
					ac.hitboxMagnitude = 200
				end
				ac:attack()
			end
        end)
    end
end)

-- end)()

coroutine.wrap(function()
	while wait(0.01) do
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			if _G.Settings.Configs["Fast Attack"] == true then
				AttackNoCD()
				if _G.Settings.Configs["Fast Attack"] then
					if tick() - cooldownfastattack > 0 then wait(0) cooldownfastattack = tick() end
				end
			elseif _G.Settings.Configs["Fast Attack"] == false then
				if ac.hitboxMagnitude ~= 200 then
					ac.hitboxMagnitude = 200
				end
				ac:attack()
			end
		end
	end
end)()

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    if AC.equipped then
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60 --Blade counter
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then--Check Blade Hits in Character
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then --Blade Counter Check
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end
        end
    end
end
local cac
spawn(function()
	game:GetService('RunService').RenderStepped:Connect(function()
		repeat task.wait()
            AttackNoCD()
        until not game.Players.LocalPlayer:FindFirstChild('Humanoid')
	end)
end)

local plr = game.Players.LocalPlayer
    
    local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
    local CbFw2 = CbFw[2]
    
    function GetCurrentBlade() 
        local p13 = CbFw2.activeController
        local ret = p13.blades[1]
        if not ret then return end
        while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
        return ret
    end
    function AttackNoCD() 
        local AC = CbFw2.activeController
        for i = 1, 1 do 
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
                    for k, v in pairs(AC.animator.anims.basic) do
                        v:Play()
                    end                  
                end)
                if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
                end
            end
        end
    end
   
  require(game.ReplicatedStorage.Util.CameraShaker):Stop()
  spawn(function()
    while task.wait() do
          pcall(function()
                  if _G.Settings.Configs["Fast Attack"] then
                    AttackNoCD() 
                        end
                    end)
                end
            end)
                       
  local VirtualUser = game:GetService('VirtualUser')
  spawn(function()
      game:GetService("Players").LocalPlayer.Idled:connect(function()
          pcall(function()
              VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
              task.wait(1)
              VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          end)
      end)
  end)

local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
	local p13 = CbFw2.activeController
	local ret = p13.blades[1]
	if not ret then return end
	while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	return ret
end 

function AttackNoCD()
	if not _G.hit() then
		if not _G.Settings.Configs["Fast Attack"] then
			local AC = CbFw2.activeController
			for i = 1, 1 do 
				local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
					plr.Character,
					{plr.Character.HumanoidRootPart},
					0
				)
				local cac = {}
				local hash = {}
				for k, v in pairs(bladehit) do
					if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
						table.insert(cac, v.Parent.HumanoidRootPart)
						hash[v.Parent] = true
					end
				end
				bladehit = cac
				if #bladehit > 0 then
					local u8 = debug.getupvalue(AC.attack, 5)
					local u9 = debug.getupvalue(AC.attack, 6)
					local u7 = debug.getupvalue(AC.attack, 4)
					local u10 = debug.getupvalue(AC.attack, 7)
					local u12 = (u8 * 798405 + u7 * 727595) % u9
					local u13 = u7 * 798405
					(function()
						u12 = (u12 * u9 + u13) % 1099511627776
						u8 = math.floor(u12 / u9)
						u7 = u12 - u8 * u9
					end)()
					u10 = u10 + 1
					debug.setupvalue(AC.attack, 5, u8)
					debug.setupvalue(AC.attack, 6, u9)
					debug.setupvalue(AC.attack, 4, u7)
					debug.setupvalue(AC.attack, 7, u10)
					pcall(function()
						if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
							AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
						end
					end)
				end
			end
		end
	end
	if _G.Settings.Configs["Fast Attack"] == true then
		local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
		local SeraphFrame = Fast[2]
		SeraphFrame.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
		SeraphFrame.activeController.attacking = false
		SeraphFrame.activeController.timeToNextBlock = 0
		SeraphFrame.activeController.humanoid.AutoRotate = 50
		SeraphFrame.activeController.increment = 4
		SeraphFrame.activeController.blocking = false
		SeraphFrame.activeController.hitboxMagnitude = 200
	end
end

local RigC = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
	local VirtualUser = game:GetService('VirtualUser')
				kkii = require(game.ReplicatedStorage.Util.CameraShaker)
				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.Settings.Configs["Fast Attack"] then
							pcall(function()
								pcall(function ()
										kkii:Stop()
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.Settings.Configs["Fast Attack"] then
							pcall(function()
								pcall(function ()
										RigC.activeController.timeToNextAttack = 0
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.Settings.Configs["Fast Attack"] then
							pcall(function()
								pcall(function ()
										RigC.activeController.hitboxMagnitude = 200
									wait(0.01)
								end)  
							end)
						end
					end)
				end)

				spawn(function()
					game:GetService('RunService').Heartbeat:connect(function()
						if _G.Settings.Configs["Fast Attack"] then
							pcall(function()
								pcall(function ()
								RigC.activeController.increment = 4
								end)
							end)
						end
					end)
				end)

task.spawn(function()
    while true do wait(0.3)
        coroutine.wrap(function()
            pcall(function()
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "weaponChange",
                        tostring("Combat")
                    )
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                        "unequipWeapon",
                        tostring("Combat")
                    )
            end)
        end)()
    end
end)
AttackFunction = function()
    task.spawn(G)
end
task.spawn(function()
while true do wait(0.3)
       if _G.Settings.Configs["Fast Attack"] then
             coroutine.wrap(function()
                 AttackFunction()
             end)()
         end
     end
 end)

 local plr = game.Players.LocalPlayer

 local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
 local CbFw2 = CbFw[2]

local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

function SeraphFuckWeapon()       
    local p13 = CbFw2.activeController
    local wea = p13.blades[1]
    if not wea then return end
    while wea.Parent ~= game.Players.LocalPlayer.Character do wea = wea.Parent end
    return wea
end

    function getHits(Size)
        local Hits = {}
        local Enemies = workspace.Enemies:GetChildren()
        local Characters = workspace.Characters:GetChildren()
        for i=1,#Enemies do local v = Enemies[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        for i=1,#Characters do local v = Characters[i]
            if v ~= game.Players.LocalPlayer.Character then
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                    table.insert(Hits,Human.RootPart)
                end
            end
        end
        return Hits
    end

    task.spawn(function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if SeraphFrame.activeController then
                    if v.Humanoid.Health > 0 then
                    local SeraphFrame = Fast[2]
        SeraphFrame.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
		SeraphFrame.activeController.attacking = false
		SeraphFrame.activeController.timeToNextBlock = 0
		SeraphFrame.activeController.humanoid.AutoRotate = 50
		SeraphFrame.activeController.increment = 4
		SeraphFrame.activeController.blocking = false
		SeraphFrame.activeController.hitboxMagnitude = 200
		SeraphFrame.activeController.attacking = false
                    end
                end
            end
        end
    end)

    function Boost()
        spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
        end)
    end

    function Unboost()
        spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
        end)
    end

    local cdnormal = 0
    local Animation = Instance.new("Animation")
    local CooldownFastAttack = 0
    Attack = function()
        local ac = SeraphFrame.activeController
        if ac and ac.equipped then
            task.spawn(
                function()
                if tick() - cdnormal > 0 then
                    ac:attack()
                    cdnormal = tick()
                else
                    Animation.AnimationId = ac.anims.basic[2]
                    ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                end
            end)
        end
    end

    b = tick()
    spawn(function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if b - tick() > 0 then
                    wait()
                    b = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                Attack()
                                wait(.01)
                                Boost()
                            end
                        end
                    end
                end)
            end
        end
    end)

    k = tick()
    spawn(function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if k - tick() > 0 then
                    wait()
                    k = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                            wait(.01)
                            Unboost()
                            end
                        end
                    end
                end)
            end
        end
    end)

    tjw1 = true
    task.spawn(
        function()
            local a = game.Players.LocalPlayer
            local b = require(a.PlayerScripts.CombatFramework.Particle)
            local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            if not shared.orl then
                shared.orl = c.wrapAttackAnimationAsync
            end
            if not shared.cpc then
                shared.cpc = b.play
            end
            if tjw1 then
                pcall(
                    function()
                        c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                            local i = c.getBladeHits(e, f, g)
                            if i then
                            b.play = function()
                        end
                        d:Play(1.25, 1.25, 1.25)
                        h(i)
                        b.play = shared.cpc
                        wait(.5)
                        d:Stop()
                    end
                end
             end)
            end
        end)
        
        local Client = game.Players.LocalPlayer
    local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
    local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    task.spawn(function()
        pcall(function()
            if not shared.orl then
                shared.orl = STOPRL.wrapAttackAnimationAsync
            end
                if not shared.cpc then
                    shared.cpc = STOP.play 
                end
            spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                        local Hits = STOPRL.getBladeHits(b,c,d)
                        if Hits then
                            if _G.Settings.Configs["Fast Attack"] then
                            STOP.play = function() end
                            a:Play(2.1,2.1,2.1)
                                func(Hits)
                                STOP.play = shared.cpc
                                wait(a.length * 0.5)
                                a:Stop()
                            else
                                func(Hits)
                                STOP.play = shared.cpc
                                wait(a.length * 0.5)
                                a:Stop()
                            end
                        end
                    end
                end)
            end)
        end)
    end)
        
    local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
    local VirtualUser = game:GetService('VirtualUser')
    local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
    local Client = game:GetService("Players").LocalPlayer
    local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

    function SeraphFuckWeapon() 
        local p13 = SeraphFrame.activeController
        local wea = p13.blades[1]
        if not wea then return end
        while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
        return wea
    end

    function getHits(Size)
        local Hits = {}
        local Enemies = workspace.Enemies:GetChildren()
        local Characters = workspace.Characters:GetChildren()
        for i=1,#Enemies do local v = Enemies[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        for i=1,#Characters do local v = Characters[i]
            if v ~= game.Players.LocalPlayer.Character then
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                    table.insert(Hits,Human.RootPart)
                end
            end
        end
        return Hits
    end

    task.spawn(
        function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if SeraphFrame.activeController then
                    -- if v.Humanoid.Health > 0 then
                        SeraphFrame.activeController.timeToNextAttack = (-math.huge ^ math.huge)
                        SeraphFrame.activeController.focusStart = 0
                        SeraphFrame.activeController.hitboxMagnitude = 40
                        SeraphFrame.activeController.humanoid.AutoRotate = true
                        SeraphFrame.activeController.increment = 4
                    -- end
                end
            end
        end
    end)

    function Boost()
        spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
        end)
    end

    function Unboost()
        spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
        end)
    end

    local cdnormal = 0
    local Animation = Instance.new("Animation")
    local CooldownFastAttack = 0
    Attack = function()
        local ac = SeraphFrame.activeController
        if ac and ac.equipped then
            task.spawn(
                function()
                if tick() - cdnormal > 0 then
                    ac:attack()
                    cdnormal = tick()
                else
                    Animation.AnimationId = ac.anims.basic[2]
                    ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                end
            end)
        end
    end

    b = tick()
    spawn(function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if b - tick() > 0 then
                    wait()
                    b = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                Attack()
                                wait()
                                Boost()
                            end
                        end
                    end
                end)
            end
        end
    end)

    k = tick()
    spawn(function()
        while wait(0.01) do
            if _G.Settings.Configs["Fast Attack"] then
                if k - tick() > 0 then
                    wait()
                    k = tick()
                end
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                            wait(.000025)
                            Unboost()
                            end
                        end
                    end
                end)
            end
        end
    end)

    tjw1 = true
    task.spawn(
        function()
            local a = game.Players.LocalPlayer
            local b = require(a.PlayerScripts.CombatFramework.Particle)
            local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            if not shared.orl then
                shared.orl = c.wrapAttackAnimationAsync
            end
            if not shared.cpc then
                shared.cpc = b.play
            end
            if tjw1 then
                pcall(
                    function()
                        c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                            local i = c.getBladeHits(e, f, g)
                            if i then
                                b.play = function()
                                end
                                d:Play(0.10, 0.10, 0.10)
                                h(i)
                                b.play = shared.cpc
                                wait(.7)
                                d:Stop()
                            end
                        end
                    end
                )
            end
        end
    )
    
    local Client = game.Players.LocalPlayer
    local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
    local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    task.spawn(function()
        pcall(function()
            if not shared.orl then
                shared.orl = STOPRL.wrapAttackAnimationAsync
            end
                if not shared.cpc then
                    shared.cpc = STOP.play 
                end
            spawn(function()
                game:GetService("RunService").Stepped:Connect(function()
                    STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                        local Hits = STOPRL.getBladeHits(b,c,d)
                        if Hits then
                            if _G.Settings.Configs["Fast Attack"] then
                                STOP.play = function() end
                                a:Play(0.1,0.1,0.1)
                                func(Hits)
                                STOP.play = shared.cpc
                                wait(a.length * 0.5)
                                a:Stop()
                            else
                                func(Hits)
                                STOP.play = shared.cpc
                                wait(a.length * 0.5)
                                a:Stop()
                            end
                        end
                    end
                end)
            end)
        end)
    end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
SeraphFrame = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Settings.Configs["Fast Attack"] then
            if typeof(SeraphFrame) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    SeraphFrame.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    SeraphFrame.activeController.timeToNextAttack = 0
                    SeraphFrame.activeController.hitboxMagnitude = 200
                    SeraphFrame.activeController.active = false
                    SeraphFrame.activeController.timeToNextBlock = 0
                    SeraphFrame.activeController.focusStart = math.huge
                    SeraphFrame.activeController.increment = 4
                    SeraphFrame.activeController.blocking = false
                    SeraphFrame.activeController.attacking = false
                    SeraphFrame.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)

CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Settings.Configs["Fast Attack"] then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 9999
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 0
                    y.activeController.increment = 4
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end)
end)

local plr = game.Players.LocalPlayer

 local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
 local CbFw2 = CbFw[2]

local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

function SeraphFuckWeapon()       
    local p13 = CbFw2.activeController
    local wea = p13.blades[1]
    if not wea then return end
    while wea.Parent ~= game.Players.LocalPlayer.Character do wea = wea.Parent end
    return wea
end

function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i=1,#Enemies do local v = Enemies[i]
    local Enemies = v:FindFirstChild("HumanoidRootPart")
        if Enemies and game.Players.LocalPlayer:DistanceFromCharacter(Enemies.Position) < Size+5 then
            table.insert(Hits,Enemies)
        end
    end
    for i=1,#Characters do local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Characters then
            local Human = v:FindFirstChild("HumanoidRootPart")
            if Human and game.Players.LocalPlayer:DistanceFromCharacter(Human.Position) < Size+5 then
                table.insert(Hits,Human)
            end
        end
    end
    return Hits
end
            
spawn(function()
    while wait(0.01) do
        if  _G.Settings.Configs["Fast Attack"] then
            if SeraphFrame.activeController then
                SeraphFrame.activeController.timeToNextAttack = -math.huge
                SeraphFrame.activeController.focusStart = math.huge
                SeraphFrame.activeController.hitboxMagnitude = math.huge
                SeraphFrame.activeController.humanoid.AutoRotate = true
                SeraphFrame.activeController.increment = math.huge
            end
        end
    end
end)
            
function Boost()
    spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
    end)
end
            
function Unboost()
    spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
    end)
end
            
local Animation = Instance.new("Animation")
Attack = function()
    local ac = SeraphFrame.activeController
        if ac and ac.equipped then
            spawn(function()
                    ac:attack()
                    cdnormal = 0
                end)
            end
        end
            
        
        spawn(function()
            while wait(0.01) do
                if  _G.Settings.Configs["Fast Attack"] then
                        wait()
                        b = 0
                    end
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                    Attack()
                                    wait(.01)
                                    Boost()
                                end
                            end
                        end
                    end)
            end
        end)
            
        
        spawn(function()
            while wait(0.01) do
                if  _G.Settings.Configs["Fast Attack"] then
                       wait()
                       k = 0
                    end
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                               wait(.01)
                                Unboost()
                                end
                            end
                        end
                    end)
            end
        end)
            
        tjw1 = true
        spawn(function()
            local a = game.Players.LocalPlayer
            local b = require(a.PlayerScripts.CombatFramework.Particle)
            local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            if not shared.orl then
                shared.orl = c.wrapAttackAnimationAsync
            end
            if not shared.cpc then
                shared.cpc = b.play
            end
            if tjw1 then
                pcall(function()
                    c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                        local i = c.getBladeHits(e, f, g)
                        if i then
                            b.play = function()
                        end
                        d:Play(1.25, 1.25, 1.25)
                        h(i)
                        b.play = shared.cpc
                        wait(.5)
                        d:Stop()
                    end
                end
             end)
            end
        end)
        
        local CameRa = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
CameRa.CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut = 2,Sustained = 0,Inactive =1}
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    pcall(function()
        if not shared.orl then
            shared.orl = STOPRL.wrapAttackAnimationAsync
        end
        if not shared.cpc then
            shared.cpc = STOP.play 
        end
        spawn(function()
            game:GetService("RunService").Stepped:Connect(function()
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                    local Hits = STOPRL.getBladeHits(b,c,d)
                    if Hits then
                        if  _G.Settings.Configs["Fast Attack"] then
                            STOP.play = function() end
                            a:Play(2.1,2.1,2.1)
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        else
                            func(Hits)
                            STOP.play = shared.cpc
                            wait(a.length * 0.5)
                            a:Stop()
                        end
                    end
                end
            end)
        end)
    end)
end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    while wait(0.01) do
        if _G.Settings.Configs["Fast Attack"] then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = -math.huge
                    y.activeController.hitboxMagnitude = math.huge
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = -math.huge
                    y.activeController.focusStart = math.huge
                    y.activeController.increment = math.huge
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
    end
end) 