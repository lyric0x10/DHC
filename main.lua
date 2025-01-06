local Dropping = false
local Dropping_Group = 1 --1 = Alts 1-4 and 2 = 5-8

if Dropping == true then
    getgenv().Host = "9kDash" -- Case Sensitive
    getgenv().FPS = 2
    getgenv().Alts = {
        Alt1 = 7817082291,
        Alt2 = 7817208777,
        Alt3 = 7817185226,
        Alt4 = 7817236038
    }
    if Dropping_Group == 2 then
        getgenv().Alts = {
            Alt1 = 7817331983,
            Alt2 = 7817364954,
            Alt3 = 7817393886,
            Alt4 = 7820540058
        }
    end
    loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/Da-Hood-Scripts/main/FreeVers.lua', true))()
elseif Dropping == "Farming" then
    script_key = "jyGvAPALEgSsQsVIXAtcfCqrEkpVGupL"
    getgenv().AutofarmSettings = {
        ["Fps"] = 5,
        ["InstaTP"] = true,
        ["Underground"] = true,
        ["Webhook"] = {
            ["URL"] = "https://discord.com/api/webhooks/1310358376005505055/hM-RkTs4oJMg23evXJN1CLztwUEt3umcuvJPiL51IwdyJai_W_MUDveZieeCG9DO0dBz",
            ["Interval"] = 10
        },
        ["Serverhop"] = {
            ["Cycle"] = 1, -- 1 = After dying once.
            ["Time"] = 0, -- 1 = After 1 Minute.
            ["Kick"] = true, -- true = After getting kicked.
            ["Blacklisted_IDs"] = {1234567890, 1234567890} -- If UserID was found ingame, Detects new joining players too.
        },
        " discord.gg/iku "
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2f5a5d4b9fc7ed0f115580a53bfab777.lua"))()
else
    -- // Ensure script runs in Da Hood (put in autoexec)
if game.PlaceId ~= 2788229376 then return end

-- // Services and Variables
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MainEvent = ReplicatedStorage.MainEvent
local detectionFlags = {
    "CHECKER_1",
    "TeleportDetect",
    "OneMoreTime",
    "BANREMOTE",
    "KICKREMOTE",
    "PERMAIDBAN",
    "BR_KICKPC",
    "BR_KICKMOBILE",
    "GUI_CHECK",
    "checkingSPEED"
}

-- // Helper Functions
local function isFlaggedEvent(event)
    return table.find(detectionFlags, tostring(event))
end

-- // Hook __namecall
local __namecall
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    -- Block flagged events
    if method == "FireServer" and self == MainEvent and isFlaggedEvent(args[2]) then
        return
    end

    -- Anti-crash logic
    if not checkcaller() and getfenv(2).crash then
        local fenv = getfenv(2)
        fenv.crash = function() end
        setfenv(2, fenv)
    end

    return __namecall(self, ...)
end)

-- // Hook __newindex to block changes to Humanoid's WalkSpeed/JumpPower
local __newindex
__newindex = hookmetamethod(game, "__newindex", function(t, k, v)
    if not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then
        return
    end
    return __newindex(t, k, v)
end)

-- // Hook metatable __namecall for additional event detection
local mt = getrawmetatable(game)
local backupNamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    -- Block flagged events
    if method == "FireServer" and self == MainEvent and isFlaggedEvent(args[2]) then
        return wait(9e9)
    end

    -- Destroy calling script if anti-crash conditions are met
    if not checkcaller() and getfenv(1).crash and getfenv(1).checkChild then
        getcallingscript():Destroy()
        return wait(9e9)
    end

    return backupNamecall(self, ...)
end)
setreadonly(mt, true)

end
