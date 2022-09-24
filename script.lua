local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local MainWindow = OrionLib:MakeWindow({Name = "Tower Of Misery", HidePremium = true, SaveConfig = false, ConfigFolder = "TowerOfMisery"})
local Home = MainWindow:MakeTab({
	Name = "Music",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Music"
})
wait()
OrionLib:MakeNotification({
	Name = "READ THIS!!!",
	Content = "If This Doesn't Work Press F9 To See If The ID Worked Or Not",
	Image = "rbxassetid://4483345998",
	Time = 8
})
wait()
OrionLib:MakeNotification({
	Name = "Alert!",
	Content = "If You Play Multiple ID's At Once, Hit Stop Music After Every ID",
	Image = "rbxassetid://4483345998",
	Time = 8
})
Home:AddTextbox({
Name = "(Must Be Spawned In) Music ID:",
Default = "Music ID Here",
TextDisappear = true,
Callback = function(ID)
local args = {
    [1] = ID
}

game:GetService("ReplicatedStorage").AnimationReplication.PlaySoundBoombox:FireServer(unpack(args))
end})

Home:AddButton({
Name = "Stop Music",
Callback = function()
game:GetService("ReplicatedStorage").AnimationReplication.StopSoundBoombox:FireServer()
end})
