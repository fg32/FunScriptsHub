-- game id 133687999931943
-- BUTTONS J F V 
local UIS = game.UserInputService
print("start")
local m1Event = game:GetService("ReplicatedStorage").spawndrone

local selfchar = game.Players.LocalPlayer.Character

local infm1thread

local infdashthread

UIS.InputBegan:Connect(function(input, gamef)


if input.KeyCode == Enum.KeyCode.J then
    print("there")
    if not infm1thread then
        infm1thread = task.spawn(function()
            while true do
                for index, value in game.ReplicatedStorage:GetChildren() do
                    if value:IsA("Model") then
                        m1Event:FireServer(
                            value.Name
                        )
                    end
                end
                task.wait()
            end
        end)
    end
end

if input.KeyCode == Enum.KeyCode.F then
    print("there")
    if not infdashthread then
        infdashthread = task.spawn(function()
            while true do
                


                for index, value in workspace:GetChildren() do
                    if value:GetAttribute("owner") == game.Players.LocalPlayer.Name then
                        local closest
                        local minval
                        for index, value in game.Players:GetChildren() do
                            if value == game.Players.LocalPlayer or value.Character.Humanoid.Health <= 0 or value.Team == game.Teams.choosing or value.Team == game.Players.LocalPlayer.Team  then continue end
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

                        value.Mainpart.CFrame = closest.Character:GetPivot()
                    end
                end
                task.wait(0.1)
            end
        end)
    end
end

if input.KeyCode == Enum.KeyCode.V then
    m1Event:FireServer(
                "geran5"
            )

    task.wait(0.5)
    for index, value in workspace:GetChildren() do
        if value:GetAttribute("owner") == game.Players.LocalPlayer.Name then
            game.Players.LocalPlayer.Character:PivotTo(value.VehicleSeat.CFrame)
        end
    end
    task.wait(1)


    for index, value in workspace:GetChildren() do
        if value:GetAttribute("owner") == game.Players.LocalPlayer.Name then
            local closest
            local minval
            for index, value in game.Players:GetChildren() do
                if value == game.Players.LocalPlayer or value.Character:FindFirstChild("Humanoid") == nil or value.Character:FindFirstChild("HumanoidRootPart") == nil or value.Character.Humanoid.Health <= 0 or value.Team == game.Teams.choosing or value.Team == game.Players.LocalPlayer.Team  then continue end
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
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            workspace.CurrentCamera.CameraSubject = closest.Character.Humanoid

            value.Mainpart.CFrame = closest.Character:GetPivot() * CFrame.Angles(0,math.rad(180),0)
            value.Mainpart.CFrame = closest.Character:GetPivot() * CFrame.Angles(0,math.rad(180),0)
            value.Mainpart.CFrame = closest.Character:GetPivot() * CFrame.Angles(0,math.rad(180),0)

            task.wait(0.5)
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            workspace.CurrentCamera.CameraSubject = closest.Character.Humanoid
            task.wait(2)
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid


        end
    end
    task.wait(0.1)
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
