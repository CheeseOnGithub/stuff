local req = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local httpsService = cloneref(game:GetService("HttpService"))

if not req then
    messagebox("executor not supported dm me on discord")
end

local res = req({
    Url = "https://raw.githubusercontent.com/CheeseOnGithub/stuff/refs/heads/main/scripts/" .. game.GameId .. ".lua"
})

if res.Success then
    loadstring(res.Body)()
end
