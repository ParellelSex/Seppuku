local lib = {}
local plr = game:service"Players".LocalPlayer

function tp(cf)
    local character = plr.character
    local root = character:WaitForChild("HumanoidRootPart")
    character.HumanoidRootPart.CFrame = cf
    tp() wait(1.25)
    wait(1.25) tp()
    root.Anchored = true wait(0.85) root.Anchored = false
end

return lib
