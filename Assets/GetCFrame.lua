local players = game:service("Players")
local client = players.LocalPlayer
local root = client.Character:WaitForChild("HumanoidRootPart")
local tbl = {["X"] = math.floor(root.Position.X),["Y"] = math.floor(root.Position.Y),["Z"] = math.floor(root.Position.Z)}
setclipboard(string.format('{["X"] = %s,["Y"] = %s,["Z"] = %s}',tbl["X"],tbl["Y"],tbl["Z"]))
