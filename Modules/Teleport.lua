local lib = {}
local plr = game:service"Players".LocalPlayer

local function tp(cf)
    local character = plr.character
    local root = character:WaitForChild("HumanoidRootPart")
    root.CFrame = cf
end
function lib:Teleport(cf)
    local character = plr.character
    local root = character:WaitForChild("HumanoidRootPart")
    tp(cf) wait(1.25)
    wait(1.25) tp(cf)
    root.Anchored = true wait(0.85) root.Anchored = false
end

return lib
