local Dropping = true

if Dropping == true then
    
    getgenv().Host = "Lyrics_DHC" -- Case Sensitive
    getgenv().FPS = 2
    getgenv().Alts = {
        Alt1 = 7825747703,
        Alt2 = 7817208777,
        Alt3 = 7817185226,
        Alt4 = 7817236038,
        Alt5 = 7817331983,
        Alt6 = 7817364954,
        Alt7 = 7826163634,
        Alt8 = 7820540058
    }
    if game:GetService("Players").LocalPlayer.Name == "Lyrics_Controller" then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/Da-Hood-Scripts/main/Cash_Counter.lua', true))()
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/Da-Hood-Scripts/main/FreeVers.lua', true))()
    end
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
            ["Time"] = 0, -- 1 = After 1 Minute.
            ["Kick"] = true, -- true = After getting kicked.
            ["Blacklisted_IDs"] = {1234567890, 1234567890} -- If UserID was found ingame, Detects new joining players too.
        },
        " discord.gg/iku "
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2f5a5d4b9fc7ed0f115580a53bfab777.lua"))()
end
