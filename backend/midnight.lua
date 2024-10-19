-- Function to get the remaining time until midnight CST
local function getTimeUntilMidnight()
    local success, response = pcall(function()
        return game:HttpGet("https://inactiveben.com/backend/midnight.lua")
    end)

    if success then
        return response:gsub("%s+", "")  -- Remove any whitespace from the response
    else
        return "Could not fetch time until midnight."  -- Fallback message
    end
end

return getTimeUntilMidnight
