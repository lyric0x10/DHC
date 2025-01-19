local Dropping = true

if Dropping == true then
    if game:GetService("Players").LocalPlayer.Name == "Lyrics_DHC423" then
        script_key = "wvnivHKXYeFGfsVvLzpcfgzXFufrJfLf"

        -----------------------

        Account_Cookie = "" -- [OPTIONAL] The accounts cookie, used for account utilities, allows you to reset private server link and accept friend requests directly from the game
        -- Your account cookie is not shared with anyone or forwarded to a server other than the Roblox one.

        getgenv().FostersSettings = {
            ["SmallUI"] = true, -- Decrease the size of the UI
            ["Alts"] = {
                -- Put your alt ids here, you do NOT need to execute the script on the alts.
                7825747703,
                7817208777,
                7817185226,
                7817236038,
                7817331983,
                7817364954,
                7826163634,
                7820540058
            },
            ["Logs Webhook"] = "", -- The webhook where logs will be sent, leave at "" to disable
            ["Proofs Webhook"] = "https://discord.com/api/webhooks/1330630039686877286/CVyLMk5XUgjuWF6MdihOaSU8Dq4v-KQQiB2E5Ucd66YFpp98tLRjeApY3FMeq3yUPN3Z", -- The webhook where proofs will be sent, leave at "" to disable
            -- Keep in mind every message is filtered by Roblox, {buyer} will turn into the buyers displayname.
            -- Leaving these messages on default is highly recommended.

            ["Messages"] = {
                ["Buyer Goal Finished"] = "{buyer} Thank you, leave the game and make sure to vouch!",
                ["Extra Cash Pickup"] = "{buyer} Stop picking up cash or you will be kicked!",
                ["Auto Finished Kick Warning"] = "{buyer} Please leave the game or you will be kicked!",
                ["No Goal Set Pickup Warning"] = "{buyer} Please wait a moment before picking up cash!",
                ["Shout on set goal"] = "{buyer} Start picking up your cash!",
                ["Inactivity Warning"] = "{buyer} Please pick up your cash or you will be kicked!",
                ["Drop/Spend Cash Warning"] = "{buyer} Do not spend or drop cash or you will be kicked!"
            },
            ["DHR Utilities v1.51"] = ".gg/dhrutils"
        }

        -----------------------

        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/cef2dea14de16d7a12c607d7825d3c88.lua"))()
    else
        script_key = "NNCTXvDvqFijTCCzehmGiYKKEMBlyLFr"

        getgenv().AltControlSettings = {
            ["Host"] = {
                ["ID"] = 7874345806,
                ["Prefix"] = "/"
            },
            ["Alts"] = {
                ["FPS"] = 3,
                ["RenderingEnabled"] = true,
                ["Stackable CDrop"] = true,
                ["IDs"] = {
                    7825747703,
                    7817208777,
                    7817185226,
                    7817236038,
                    7817331983,
                    7817364954,
                    7826163634,
                    7820540058
                }
            }
        }

        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e26feccea2930cf4c02bfd5f151b2361.lua"))()
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
            ["Blacklisted_IDs"] = {
                7825747703,
                7817208777,
                7817185226,
                7817236038,
                7817331983,
                7817364954,
                7826163634,
                7820540058
            } -- If UserID was found ingame, Detects new joining players too.
        },
        " discord.gg/iku "
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2f5a5d4b9fc7ed0f115580a53bfab777.lua"))()
end
