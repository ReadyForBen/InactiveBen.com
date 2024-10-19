local Players = game:GetService("Players")

-- Function to fetch the actual key from the remote server
local function fetchDailyKey()
    local success, response = pcall(function()
        return game:HttpGet("https://inactiveben.com/backend/keys/daily/key.lua")
    end)

    return success and response:gsub("%s+", "") or nil  -- Return the key or nil if the request fails
end

return {
    fetchDailyKey = fetchDailyKey
}
