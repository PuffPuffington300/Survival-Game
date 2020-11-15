--Rescripted by Luckymaxer

Tool = script.Parent
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")

ServerControl = Tool:WaitForChild("ServerControl")
ClientControl = Tool:WaitForChild("ClientControl")

ClientControl.OnClientInvoke = (function(Mode, Value)
	if Mode == "PlaySound" and Value then
		Value:Play()
	end
end)

function InvokeServer(Mode, Value, arg)
	pcall(function()
		ServerControl:InvokeServer(Mode, Value, arg)
	end)
end

function Equipped(Mouse)
	local Character = Tool.Parent
	local Player = Players:GetPlayerFromCharacter(Character)
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	if not Player or not Humanoid or Humanoid.Health == 0 then
		return
	end
	Mouse.Button1Down:Connect(function()
		InvokeServer("Click", true, Mouse.Hit.p)
	end)
end

local function Unequipped()

end

Tool.Equipped:Connect(Equipped)
Tool.Unequipped:Connect(Unequipped)