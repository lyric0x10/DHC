local Dropping = true
local Dropping_Group = 1 --1 = Alts 1-4 and 2 = 5-8

if Dropping == true then
    getgenv().Host = "9kDash" -- Case Sensitive
    getgenv().FPS = 10
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/W9K/Da-Hood-Scripts/main/FreeVers.lua", true))()
else
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
            ["Time"] = 14, -- 1 = After 1 Minute.
            ["Kick"] = true, -- true = After getting kicked.
            ["Blacklisted_IDs"] = {1234567890, 1234567890} -- If UserID was found ingame, Detects new joining players too.
        },
        " discord.gg/iku "
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2f5a5d4b9fc7ed0f115580a53bfab777.lua"))()
end
