-- game id 121539142466512
-- BUTTONS T G F J
local UIS = game.UserInputService
print("start")
local m1Event = game:GetService("ReplicatedStorage").M1Event
local DashEvent = game:GetService("ReplicatedStorage").DashEvent

local selfchar = game.Players.LocalPlayer.Character

local infm1thread

local infdashthread

UIS.InputBegan:Connect(function(input, gamef)

if input.KeyCode == Enum.KeyCode.T then
    print("there")
    if not infm1thread then
        infm1thread = task.spawn(function()
            while true do
                for index, value in game.StarterGui.CharacterSelection.SelectionFrame:GetChildren() do
                    if value:IsA("TextButton") then
                        m1Event:FireServer(
                            value.Name,
                            1
                        )
                    end
                end
                task.wait(0.1)
            end
        end)
    end
end

if input.KeyCode == Enum.KeyCode.J then
    print("there")
    if not infm1thread then
        infm1thread = task.spawn(function()
            while true do
                for index, value in game.StarterGui.CharacterSelection.SelectionFrame:GetChildren() do
                    if value:IsA("TextButton") then
                        m1Event:FireServer(
                            value.Name,
                            1
                        )
                    end
                end
                task.wait()
            end
        end)
    end
end

if input.KeyCode == Enum.KeyCode.F then
    if not infdashthread then
        infdashthread = task.spawn(function()
            while true do
                DashEvent:FireServer(
                    "Forward"
                )
                task.wait(0.1)
            end
        end)
    end
end

if input.KeyCode == Enum.KeyCode.G then
    local closest
    local minval
    for index, value in game.Players:GetChildren() do
        if value == game.Players.LocalPlayer or value.Character.Humanoid.Health <= 0 then continue end
        if not closest then
            closest = value

            minval = math.abs(value.Character.HumanoidRootPart.Position.Magnitude - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Magnitude)
            continue
        end

        local current = math.abs(value.Character.HumanoidRootPart.Position.Magnitude - game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Magnitude)

        if current < minval then
            closest = value
            minval = current
        end


    end

    game.Players.LocalPlayer.Character:PivotTo(closest.Character:GetPivot())
end

end)

UIS.InputEnded:Connect(function(input, gamef)

    if input.KeyCode == Enum.KeyCode.T then
        if infm1thread then
            task.cancel(infm1thread)
            infm1thread = nil
        end
    end

    if input.KeyCode == Enum.KeyCode.J then
        if infm1thread then
            task.cancel(infm1thread)
            infm1thread = nil
        end
    end

    if input.KeyCode == Enum.KeyCode.F then
        if infdashthread then
            task.cancel(infdashthread)
            infdashthread = nil
        end
    end

end)


